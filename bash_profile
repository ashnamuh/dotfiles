# basic alias
alias e='exit'

# node alias
alias i='npm install'
alias t='npm test'
alias s='NODE_ENV=development BLUEBIRD_DEBUG=0 nodemon .'
alias p='NODE_ENV=production nodemon .'
alias nl='npm list --depth=0'
alias nlg='npm list -g --depth=0'

# brew alias
alias bsrp='brew services run postgresql'
alias bsrr='brew services run redis'

alias bssp='brew services stop postgresql'
alias bssr='brew services stop redis'
alias bssall='brew services stop --all'

# linode remote servers access
alias lnd0='ssh lobby@lnd0.openknowl.com'
alias lnd1='ssh lobby@lnd1.openknowl.com'
alias lnd2='ssh lobby@lnd2.openknowl.com'
