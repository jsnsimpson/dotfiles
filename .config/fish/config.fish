set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow

# Status Chars

set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'

set -x CM_DEVELOPER_KEY jasons

function fish_prompt
        set last_status $status
        set_color $fish_color_cwd
        printf '%s σ' (prompt_pwd)
        set_color normal
        printf '%s ' (__fish_git_prompt)
       set_color normal
end

export PS1="test:"

set PATH (brew --prefix homebrew/php/php55)/bin /usr/local/bin $PATH
set VISUAL=vim
set EDITOR="$VISUAL"

eval (python -m virtualfish)
eval (python -m virtualfish compat_aliases)

