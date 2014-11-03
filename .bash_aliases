# Bash
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Git
alias gs='git status'
alias gc='git commit -v'
alias ga='git add . && git add -u .'

# Tmux
tmx() {
	tmuxinator start $1
}

alias tkill='tmux kill-session -t'

# Apps
alias iphone='open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app/'

# Script
alias pwgen='cd ~/Dropbox/Scripts/wordpress/ && ruby ~/Dropbox/Scripts/wordpress/pwgen.rb'

# autotest
alias autotestfeature='AUTOFEATURE=true autotest'

# renew db
alias renewdb='bash ~/Dropbox/Scripts/db/renewdb.sh'

# rake
alias tp='rake db:migrate db:test:prepare'

###############################################

alias girly='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background'

# VLC
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
