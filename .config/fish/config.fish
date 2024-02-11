function starship_transient_prompt_func
  starship module character
end

# if status is-interactive
#     # Commands to run in interactive sessions can go here
#     starship init fish | source
#     enable_transience
#     alias python=python3
# end

# my aliases
alias pnpx="pnpm dlx"
alias edit="hx"
alias vim="nvim"
alias ls="lsd -h"
alias dot-config="$(which git) --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias mkdir="mkdir -p"
alias info="btop"
alias copilot="gh copilot suggest"
alias python="python3"

# Created by `pipx` on 2023-05-24 22:46:17
set PATH $PATH /Users/ltdn/.local/bin

# google stuff
source "$(brew --prefix)/share/google-cloud-sdk/path.fish.inc"


# azd 
set -gx AZURE_DEV_COLLECT_TELEMETRY "no"
set -Ux EDITOR hx
# zoxide
zoxide init fish | source 


# mojo
set -gx MODULAR_HOME "/Users/ltdn/.modular"

# azd no tracking

# pnpm
set -gx PNPM_HOME "/Users/ltdn/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# bat and delta
set -gx BAT_THEME Nord

starship init fish | source
