spy () { lsof -i -P +c 0 +M | grep -i "$1" }

alias agi='sudo apt-get install -y'

# get rid of command not found
alias cd..='cd ..'
 
# a quick way to get out of current directory
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'
alias .7='cd ../../../../../../../'
alias .8='cd ../../../../../../../../'

function alias-up() {
    if ([ $# -eq 0 ])
    then
            echo "Usage: getAliasSh AliasUserID"
    else
            wget -q -O - "$@" https://alias.sh/user/"$1"/alias > ~/.bash_aliases
            source ~/.bash_aliases
    fi
}

alias wotgobblemem='ps -o time,ppid,pid,nice,pcpu,pmem,user,comm -A | sort -n -k 6 | tail -15'

alias myip='curl ip.appspot.com'

alias speedtest='wget --output-document=/dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip'

alias bu='brew update && brew upgrade && brew cleanup'

alias netlisteners='lsof -i -P | grep LISTEN'

alias l='ls -lAh --color'

s(){
    if [[ $# == 0 ]]; then
        sudo $(history -p '!!')
    else
        sudo "$@"
    fi
}

alias ccat='pygmentize -O bg=dark'

alias hist='history | grep '

sniff () { sudo ngrep -d ${1} -t '^(GET|POST) ' 'tcp and port 80'; }

alias flushdns="dscacheutil -flushcache"

alias sulast='sudo $(history -p !-1)'

alias grep='grep --color=auto'

grepit(){
    find . -name "*${2}" -print | xargs grep -nir "${1}"
}

findreplace(){
    printf "Search: ${1}\n"
    printf "Replace: ${2}\n"
    printf "In: ${3}\n\n"

    find . -name "*${3}" -type f | xargs perl -pi -e 's/${1}/${2}/g'
}

alias remove='sudo apt-get remove'

alias install='sudo apt-get install'

alias gs="git status" #N.B. Overrides ghostscript (probably not important if you don't use it)
alias gd="git diff"
alias gc="git commit"
alias gl="git log --graph --full-history --all --color"

alias genSalt='openssl rand -base64 32'

extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}


alias fact="elinks -dump randomfunfacts.com | sed -n '/^| /p' | tr -d \|"

alias tm='ps -ef | grep'

alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'

alias c='clear'

ft() {

find . -name "$2" -exec grep -il "$1" {} \;
}