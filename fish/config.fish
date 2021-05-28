##################################
# FISH CONFIG
##################################

# set vim mode
set fish_vi_key_bindings

# set fish theme
set fish_theme lambda

# set intro message
set fish_greeting "turbo fish! ::<>  ::<>"


# aliases
alias python='python3'
alias pip='pip3'
alias pibip='curl inet-ip.info'
alias vpn='nordvpn'
alias svim='nvr -s' # for neovim-remote
alias vim='nvim'
alias vi='nvim'

# PATHes
set PATH $HOME/.local/bin $PATH

# generate rust atcoder template
function atcargo
 cargo generate --name $argv \
    --git https://github.com/hmiya6/atcoder-rust-base \
    --branch ja
end
