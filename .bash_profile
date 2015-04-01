#GIT ALIASES
alias gs='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gau='git add --update'
alias gc='git commit -v'
alias gcm='git commit -m'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcot='git checkout -t'
alias gcotb='git checkout --track -b'
alias glog='git log'
alias glogp='git log --pretty=format:"%h %s" --graph'
alias gitlog='git log --graph --oneline --decorate --all'

#screen references
alias screenup='screen -d -m -S shared'
alias screenattach='screen -x shared'

els() {
    cd /Users/smcquaid/Dropbox/Code/Openstack/els-smdb-client
    venvgo
}

vox() {
    tox -- -s
}

#Venv Shortcuts
venvgo () {
    # Show python version
    if [ -f .python-version ]
    then
        cat .python-version
    fi
    # Create virtualenv
    virtualenv .venv
    # Activate virtualenv
    source .venv/bin/activate
    # Re-init requirements
    if [ -f requirements.txt ]
    then
        pip install -r requirements.txt
    fi
    if [ -f test-requirements.txt ]
    then
        pip install -r test-requirements.txt
    fi
    # Init pyenv
    eval "$(pyenv init -)"
    pyenv versions
    python --version
    # Remove .tox
    if [ -d .tox ]
    then
        rm -rf .tox
    fi
}

sourceopenstackrc () {
    source /Users/smcquaid/.openstack/dev-smcquaid-openrc.sh
}

catbashprofile () {
    cat /Users/smcquaid/.bash_profile
}

# Scripting
# make executable
alias ax="chmod a+x"
# edit .bash_profile
alias bp="$EDITOR ~/.bash_profile"
# reload your bash config
alias src="source ~/.bash_profile"

#Convienance
alias chrome="open -a \"Google Chrome\""
alias myip='curl ip.appspot.com'
#copy output of last command to clipboard
alias cl="fc -e -|pbcopy"
# top
alias cpu='top -o cpu'
alias mem='top -o rsize' # memory
# copy the working directory path
alias cpwd='pwd|tr -d "\n"|pbcopy'
# share history between terminal sessions
alias he="history -a" # export history
alias hi="history -n" # import history
# ls better
alias la="ls -aF"
alias ld="ls -ld"
alias ll="ls -l"
alias lt='ls -At1 && echo "------Oldest--"'
alias ltr='ls -Art1 && echo "------Newest--"'
# mute the system volume
alias stfu="osascript -e 'set volume output muted true'"
# list TODO/FIX lines from the current project
alias todos="ack -n --nogroup '(TODO|FIX(ME)?):'"
# interactive fasd
alias zi="fasd -e cd -i"

# Cont'd
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
alias qfind="find . -name "                 # qfind:    Quickly search for file

#Openstack Profiles
alias elsdev01='ssh '$USER'@g1dlgenlab02-01.dev.glbt1.gdg'
alias elsdev02='ssh '$USER'@g1dlgenlab02-02.dev.glbt1.gdg'
alias elsdev03='ssh '$USER'@g1dlgenlab02-03.dev.glbt1.gdg'
alias elsdev04='ssh '$USER'@g1dlgenlab02-04.dev.glbt1.gdg'
alias elsdev05='ssh '$USER'@g1dlgenlab05.dev.glbt1.gdg'
alias elsdev06='ssh '$USER'@g1dlgenlab06.dev.glbt1.gdg'
alias elsdev07='ssh '$USER'@g1dlgenlab07.dev.glbt1.gdg'

alias elstest01='ssh '$USER'@g1dlgenlab03-01.dev.glbt1.gdg'
alias elstest02='ssh '$USER'@g1dlgenlab03-02.dev.glbt1.gdg'
alias elstest03='ssh '$USER'@g1dlgenlab03-03.dev.glbt1.gdg'
alias elstest04='ssh '$USER'@g1dlgenlab03-04.dev.glbt1.gdg'
alias elstest08='ssh '$USER'@g1dlgenlab08.dev.glbt1.gdg'
alias elstest09='ssh '$USER'@g1dlgenlab09.dev.glbt1.gdg'
alias elstest10='ssh '$USER'@g1dlgenlab10.dev.glbt1.gdg'
alias elstest11='ssh '$USER'@g1dlgenlab11.dev.glbt1.gdg'
alias elstest12='ssh '$USER'@g1dlgenlab12.dev.glbt1.gdg'
alias elstest13='ssh '$USER'@g1dlgenlab13.dev.glbt1.gdg'

alias elsstage01='ssh '$USER'@g1dlgenlab04-01.dev.glbt1.gdg'
alias elsstage02='ssh '$USER'@g1dlgenlab04-02.dev.glbt1.gdg'
alias elsstage03='ssh '$USER'@g1dlgenlab04-03.dev.glbt1.gdg'

alias elsprod01='ssh '$USER'@p3plcldmap01.prod.phx3.secureserver.net'
alias elsprod02='ssh '$USER'@p3plcldmap02.prod.phx3.secureserver.net'
alias elsprod03='ssh '$USER'@p3plcldmap03.prod.phx3.secureserver.net'
alias elsprod034='ssh '$USER'@p3plcldhv02-034.prod.phx3.gdg'

# only fools wouldn't do this ;-)
alias open='subl -w'
export EDITOR="subl -w"

#pyenv
eval "$(pyenv init -)"

#DOCKER STUFF
export DOCKER_HOST=tcp://localhost:2375

#export path
export PATH="/usr/local:/usr/local/bin:$PATH"

#rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
#needs to be at the front of your PATH

#git
export PATH="$PATH:/usr/local/git/bin"

#git-tf stuff
export PATH="$PATH:/Users/smcquaid/git-tf"

### Added by the Heroku Toolbelt
export PATH="$PATH:/usr/local/heroku/bin"

## Add special .dotfiles
export PATH="$PATH:$HOME/.dotfiles/bin"

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
#export PATH="${PATH}:/Library/Frameworks/Python.framework/Versions/3.4/bin"

extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)        tar xjf $1        ;;
            *.tar.gz)         tar xzf $1        ;;
            *.bz2)            bunzip2 $1        ;;
            *.rar)            unrar x $1        ;;
            *.gz)             gunzip $1         ;;
            *.tar)            tar xf $1         ;;
            *.tbz2)           tar xjf $1        ;;
            *.tgz)            tar xzf $1        ;;
            *.zip)            unzip $1          ;;
            *.Z)              uncompress $1     ;;
            *)                echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}


MYSQL=/usr/local/mysql/bin
export PATH=$PATH:$MYSQL
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
