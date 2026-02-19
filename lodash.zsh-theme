# Tema Lodash - Node ao lado do usuário
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"

# Função do Node ajustada (removi o espaço inicial para colar no usuário)
function node_version_prompt() {
  if (( $+commands[node] )); then
    echo " (%{$fg[green]%} %{$fg[white]%}$(node -v)%{$reset_color%})"
  fi
}

# PROMPT Reordenado:
# 1. Usuário (%n)
# 2. Node
# 3. Caminho (%2~)
# 4. Git
PROMPT='╭─%{$fg_bold[white]%}%n%{$reset_color%}$(node_version_prompt) %{$fg_bold[cyan]%}%2~%{$reset_color%} $(git_prompt_info)
╰─$ '

RPROMPT=''

# Configuração do Git
ZSH_THEME_GIT_PROMPT_PREFIX="‹%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}› "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}●"
ZSH_THEME_GIT_PROMPT_CLEAN=""
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
