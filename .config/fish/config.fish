if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    alias python=python3
end

# pnpm
set -gx PNPM_HOME "/Users/ltdn/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# my aliases
alias pnpx="pnpm dlx"
alias edit="hx"
alias ls="lsd -h"
alias dot-config="$(which git) --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias mkdir="mkdir -p"
# Created by `pipx` on 2023-05-24 22:46:17
set PATH $PATH /Users/ltdn/.local/bin

# google stuff
source "$(brew --prefix)/share/google-cloud-sdk/path.fish.inc"


# azd 
set -gx AZURE_DEV_COLLECT_TELEMETRY "no"
set -Ux EDITOR hx


# zoxide
zoxide init fish | source 
