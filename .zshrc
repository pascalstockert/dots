### ALIASES ###

## zsh
alias ll="ls -lah"
alias cc="clear"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."

## Git
alias g="git"

## Git Commits
alias gstat="git status"
alias gdiff="git diff"			# List all changes between HEAD and main
alias gdiffs="git diff --staged"	# List all staged changes between HEAD and main
alias gadd="git add" 			# Shorthand for staging changes
alias gc="git commit -v"		# Commit verbose
alias gca="git commit --amend" 		# Amend commit

## Git Remotes
alias grm="git remote"		# List remotes
alias grmadd="git remote add"	# Add remote
alias grmrm="git remote rm"	# Remove remote
alias gpl="git pull"		# Pull from remote
alias gp="git push" 		# Push to remote

## Git Branch
alias gbr="git branch" 				# Branches sorted alphabetically
alias gbrl="gbr --sort=-committerdate" 		# Branches sorted by latest commit
alias gbrc="git rev-parse --abbrev-ref HEAD"	# Current branch
alias gch="git checkout"			# Checkout local branch
alias gchb="git checkout -b"			# Create local branch
alias gsw="git switch"				# Checkout remote branch
alias gbrd="git branch --delete"		# Delete local branch

## Git Stash
alias gst="git stash push"		# Stash changes
alias gstu="git stash push -u"		# Stash changes including untracked files
alias gstm="git stash push -m"		# Stash changes with message 
alias gstum="git stash push -u -m"	# Stash changes including untracked with message
alias gstp="git stash pop"		# Pop latest stash entry from stash
alias gstl="git stash list"		# List stash entries

## Dev Server
alias servethis='python -m SimpleHTTPServer 8000'
alias serve:php='php -S 0.0.0.0:8080'
alias serve:node='http-server .'
alias serve:python='servethis'

## SSH
alias ssh:pasu-micro='ssh pasu@35.223.234.182'

### EXPORTS ###

## Exports for android emulator
export CLOUDSDK_PYTHON=python2
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

## Ruby / Ruby Gems
export PATH=/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.0.0/bin:$PATH
export PATH="/usr/local/opt/ruby/bin:$PATH"

## GCloud
if [ -f '/Users/pascal/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/pascal/Downloads/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/pascal/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/pascal/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

## NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## Homebrew
if [ ! -f /proc/sys/fs/binfmt_misc/WSLInterop ]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

