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

alias vim "nvim"
alias cm-phptest "cd ~/Sites/creativemanager/middleware; grunt pre-commit; cd -"
alias cm-clienttest "cd ~/Sites/creativemanager/client; grunt commit; cd -"
alias cmcompile "cd ~/Sites/creativemanager/client; grunt sass; grunt compile; cd -"
alias crm "cd ~/Sites/creativemanager"
alias vservice "cd ~/Sites/version-service"
alias decisiontrees "cd ~/Sites/decision-tree-service"
alias dt-test "cd ~/Sites/decision-tree-service; grunt pre-commit; cd -"
alias cs-test "cd ~/Sites/creative-status-service; grunt pre-commit; cd -"
alias creativestatus "cd ~/Sites/creative-status-service"
alias cu-test "cd ~/Sites/creative-upload-service; grunt pre-commit; cd -"
alias creativeupload "cd ~/Sites/creative-upload-service"
alias py "python3"
alias gs "git status"
alias graylog "~/Sites/graylog/graylog-collector-0.4.2/bin/graylog-collector"
alias cm_run_acceptance "vagrant ssh -c \"cd /vagrant \
                         cd resources/fig/run-acceptance-tests/ && sudo fig stop; \
                         cd /vagrant && sudo docker build --force-rm=true --rm=true -t flashtalking/creativemanager-acceptance resources/docker/acceptance && cd resources/fig/run-acceptance-tests/ && sudo fig up --rm -d selenium; \
                         sudo sh run_tests.sh $2; \ 
                         sudo fig stop; \ 
                         sudo fig rm -v --force\" "


eval (python -m virtualfish)
eval (python -m virtualfish compat_aliases)

