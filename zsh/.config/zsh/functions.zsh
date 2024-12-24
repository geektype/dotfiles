git_prompt_info() {
    local RED="\033[31m"
    local GREEN="\033[32m"
    local RESET="\033[0m"

    # Check if we are inside a git repository
    if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
        # Get the current branch or commit hash (if detached HEAD)
        local branch_name
        branch_name=$(git symbolic-ref --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null)

        # Check for uncommitted changes (only modified or staged files, not untracked ones)
        local git_status
        local color
        local symbol=""
        
        # Check if there are uncommitted changes (modified or staged), but not untracked files
        if [[ -n $(git status --porcelain --untracked-files=no) ]]; then
            git_status="dirty"
            color="$RED"
            symbol=" ✗"
        else
            git_status="clean"
            color="$GREEN"
            symbol=" ✔"
        fi

        # Format the output with color, branch name, and status symbol
        echo -e "(${color}$branch_name$symbol${RESET})"
    fi
}
