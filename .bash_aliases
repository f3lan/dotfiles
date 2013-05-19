# Bash
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Git
alias gs='git status'
alias gc='git commit -v'
alias ga='git add -u .'

# Git Folders
alias ccgit='cd ~/git/CompilerConstruction/'

# Projects
alias bliss='cd ~/git/bliss/ && rvm use 1.9.3-p362 && rvm gemset use bliss'
alias blissm='cd ~/git/bliss_money/ && rvm use 1.9.3-p194 && rvm gemset use bliss_money'
alias rapture='cd ~/git/rapture && rvm use 1.9.3-p0 && rvm gemset use rapture'
alias legacy='cd ~/git/legacy' 
alias clear-orig='find . -iname "*.orig" -exec rm "{}" ";"'
alias tc='cd ~/git/timeclock/ && rvm use 1.9.3-p362 && rvm gemset use timeclock'

# Tmux
alias tmuxb='tmuxinator bliss'
alias tmuxbk='tmux kill-session -t BLISS && pkill ruby'
alias tmuxa='tmuxinator agency'
alias tmuxak='tmux kill-session -t Agency && pkill ruby'
alias tmuxw='tmuxinator webshop'
alias tmuxwk='tmux kill-session -t Webshop3 pkill ruby'
alias tmuxc='tmuxinator timeclock'
alias tmuxck='tmux kill-session -t Timeclock'
alias iphone='open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app/'

alias cc='tmuxinator cc'


# Cucumber
export CUCUMBER_FORMAT=progress

# Spork
alias sporkc='spork cucumber & spork &'

# autotest
alias autotestfeature='AUTOFEATURE=true autotest'

# renew db
alias renewdb='bash ~/Dropbox/Scripts/db/renewdb.sh'

# github
alias gs='git status'

# rake
alias tp='rake db:migrate db:test:prepare'

# chrome
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome &"

###############################################
alias nethack='/usr/games/bin/nethack'
