function pnvim --description "Pipe text through nvim, run commands, output the result"
    argparse --name=pnvim h/help w/with-config -- $argv
    or return 1

    if set -ql _flag_help
        echo 'Usage: pnvim [-h|--help] [-w|--with-config] <cmd>...'
        echo ''
        echo 'Pipe text through nvim, run each argument in order, and print the'
        echo 'resulting buffer.'
        echo ''
        echo 'Each argument is interpreted by its first character:'
        echo '  Leading ":"  → Ex command (e.g. ":%s/foo/bar/g", ":sort")'
        echo '  Otherwise    → Normal-mode keys (e.g. "gUU", "A! doe", "dw")'
        echo ''
        echo 'Args are passed verbatim — no shell-level escaping needed.'
        echo ''
        echo 'Options:'
        echo '  -h, --help         Show this help'
        echo '  -w, --with-config  Load your nvim config (default: clean nvim)'
        echo ''
        echo 'Examples:'
        echo "  echo 'hello world' | pnvim gUU 'A! doe' in           # HELLO WORLD! done"
        echo "  printf 'b\\na\\nc'    | pnvim ':sort'                    # a/b/c"
        echo "  cat names.txt      | pnvim ggVGu ':%g/[^a-z]/d'      # lowercase + filter"
        return 0
    end

    if test (count $argv) -eq 0
        echo "pnvim need at least one argument (try --help)" >&2
        return 1
    end

    # Args starting with ':' are Ex commands (strip the ':' and pass straight
    # to -c). Everything else is treated as normal-mode keys via :normal!.
    # No escaping needed: fish passes the literal string and vim's own
    # semantics handle it from there.
    set -l vim_cmds
    for arg in $argv
        if string match -q ':*' -- $arg
            set -a vim_cmds -c (string sub -s 2 -- $arg)
        else
            set -a vim_cmds -c "normal! $arg"
        end
    end

    set -l nvim_opts
    if not set -ql _flag_with_config
        set -a nvim_opts -u NONE -i NONE --noplugin
    end

    set -l outfile (mktemp)
    set -l errfile (mktemp)

    nvim --headless $nvim_opts $vim_cmds -c "write! $outfile" -c 'qa!' /dev/stdin 2>$errfile
    set -l exit_code $status

    if test $exit_code -eq 0
        cat $outfile
    else
        cat $errfile >&2
    end

    rm -f $outfile $errfile
    return $exit_code
end
