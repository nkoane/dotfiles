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
alias hx "helix"
alias pnpx "pnpm dlx"
alias edit "hx"
alias vim "nvim"
alias ls "lsd -h"
alias dot "$(which git) --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias mkdir "mkdir -p"
alias info "btop"
alias copilot "gh copilot suggest"
alias python "python3"

# azd 
set -gx AZURE_DEV_COLLECT_TELEMETRY "no"
set -Ux EDITOR hx
# zoxide
zoxide init fish | source 



# azd no tracking


# bat and delta
set -gx BAT_THEME Nord

starship init fish | source

# signed git  commites
export GPG_TTY=$(tty)

set -x N_PREFIX "$HOME/n"; contains "$N_PREFIX/bin" $PATH; or set -a PATH "$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# pnpm
set -gx PNPM_HOME "/home/ltdn/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
