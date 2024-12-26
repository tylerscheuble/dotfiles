function auto_venv --on-variable PWD
    # Get the root of the current git repo, if any
    set git_root (git rev-parse --show-toplevel 2> /dev/null)

    # If we're in a git repo
    if test $status -eq 0
        # Check if .venv folder exists in the repo root
        if test -d "$git_root/.venv"
            # Only activate if not already using this exact venv
            if test "$VIRTUAL_ENV" != "$git_root/.venv"
                source "$git_root/.venv/bin/activate.fish"
            end
        else
            # No .venv folder at git root -> deactivate if active
            if test -n "$VIRTUAL_ENV"
                deactivate
            end
        end
    else
        # Not in a git repo -> deactivate if active
        if test -n "$VIRTUAL_ENV"
            deactivate
        end
    end
end

# Also run auto_venv once at shell startup for tmux
auto_venv
