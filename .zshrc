# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export EDITOR='vim'
export DISABLE_MAGIC_FUNCTIONS=true
export ZSH_THEME="powerlevel10k/powerlevel10k"
export GOPATH=$HOME/go # GO
export PATH=$GOPATH/bin:$PATH # GO
export PIPENV_PYTHON="$PYENV_ROOT/shims/python" # pyenv
export PYENV_ROOT="$HOME/.pyenv" # pyenv
export PATH="$PYENV_ROOT/bin:$PATH" # pyenv
export MY_CONF_DIR="$HOME/myconf"
export GPG_TTY=$TTY

plugins=(fzf zsh-autosuggestions history zsh-syntax-highlighting nvm git)

source $ZSH/oh-my-zsh.sh
source ~/myconf/initckan.zsh
source ~/myconf/gopro.zsh
source ~/myconf/aliases.zsh

eval "$(pyenv init -)" # Initialize pyenv
eval "$(direnv hook zsh)" # Initialize direnv
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

######## NVM ##################################################################
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
######## NVM END ##############################################################

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
