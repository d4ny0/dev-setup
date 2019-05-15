export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=~/.composer/vendor/bin:$PATH
export PATH=~/.npm-global/bin:$PATH

# make nvm (node version manager) available globally
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

eval $(thefuck --alias)
