## -----------------------
## -- 1) Import .bashrc --
## -----------------------#

# Factor out all repeated profile initialization into .bashrc
#  - All non-login shell parameters go there
#  - All declarations repeated for each screen session go there
#if [ -f ~/.bashrc ]; then
#  source ~/.bashrc
#fi
#
## Configure PATH
##  - These are line by line so that you can kill one without affecting the others.
##  - Lowest priority first, highest priority last.
#export PATH=$PATH
#export PATH=$HOME/bin:$PATH
#export PATH=/usr/bin:$PATH
#export PATH=/usr/local/bin:$PATH
#export PATH=/usr/local/sbin:$PATH
#export PATH=/usr/local/heroku/bin:$PATH # Heroku: https://toolbelt.heroku.com/standalone
#
#[[ -s /home/vagrant/.nvm/nvm.sh ]] && . /home/vagrant/.nvm/nvm.sh # This loads NVM

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\033[00m\]\u@\h\[\033[01;34m\] \W \[\033[31m\]\$(parse_git_branch) \[\033[00m\]$\[\033[00m\] "
