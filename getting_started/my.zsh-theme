# user, host, and path
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"

if [[ `hostname -s` = P641697 ]]; then
    PROMPT='${ret_status} %{$reset_color%}%{$fg[red]%}book:%{$reset_color%} %{$fg[cyan]%}%c/>%{$reset_color%} $(git_prompt_info)'
#    PROMPT='${ret_status} %{$reset_color%}%{$fg[yellow]%}[\#]%{$reset_color%}%{$fg[red]%}book:%{$reset_color%} %{$fg[cyan]%}%c/>%{$reset_color%} $(git_prompt_info)'    
else
    PROMPT='${ret_status} %{$reset_color%}%{$fg[red]%}%m:%{$reset_color%} %{$fg[cyan]%}%c/>%{$reset_color%} $(git_prompt_info)'
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
