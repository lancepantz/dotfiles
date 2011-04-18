export PATH=/opt/local/bin:/opt/local/sbin:~/bin:/opt/local/lib/postgresql83/bin:/usr/local/bin:/bin$PATH
export EDITOR=/usr/bin/emacs
export LD_LIBRARY_PATH=/usr/local/lib
export SQL_ENV="wg_dev"
export GRAPH_ENV="test"
export DB_CONFIG=/Users/lance/graph/db/database.yml
export JAVA_OPTS="-Djava.library.path=/usr/local/lib"

export CLASSPATH=/usr/share/java:/usr/share/java/*:~/lib/java/*
export GIT_ALLOW_SUBMODULE_COMMITS=1

export CLOJURE_EXT=/Users/lance/lib/java
export GIT_ALLOW_SUBMODULE_COMMITS=1

export CLICOLOR=1
export LSCOLORS='fa'

alias gfs='git fs'
alias gff='git ff'
alias a='e'
alias ss='script/server'
alias sc='script/console'

alias clj='rlwrap java -cp "src:classes:lib/*" -server -XX:+UseParallelGC -XX:+UseParallelOldGC -Xms1024M -Xmx1024M -Djava.library.path=/usr/local/lib clojure.main'

alias gst='git status'
alias ack='ack -a'

function gb {
  cut -c17- .git/HEAD 2> /dev/null
}

#if [[ "$TERM" != "dumb" ]]; then
#  PROMPT_COMMAND='GIT_BRANCH=`cut -c17- .git/HEAD 2> /dev/null`'
#  PS1="\h:\W \[\033[01;33m\]\$GIT_BRANCH\[\033[00;38m\]$ \[\033]0;\h: \w\007\]"
#  set -o functrace
#  trap 'echo -ne "\033]0;${HOSTNAME%%.*}: $BASH_COMMAND\007"' DEBUG
#fi

alias   gd='git d'
alias  gdc='git dc'
alias  gco='git co'
alias  gci='git ci'
alias  gca='git ca'
alias  gst='git st'
alias  gpl='git pl'
alias  gpu='git pu'
alias  gbr='git br'
alias  gbd='git bd'
alias  gcp='git cp'
alias   gl='git l'
alias  gll='git ll'
alias glla='git lla'
alias  gla='git la'
alias  gcl='git cl'
alias gcll='git cll'
alias  gcr='git cr'
alias  gpp='git pp'
alias  gsh='git sh'
alias  gsv='git sv'
alias  gsl='git sl'
alias  gsd='git sd'
alias  gsp='git sp'
alias  gsa='git sa'

alias jst='sudo ~/jetty/bin/jetty.sh start'
alias jsp='sudo ~/jetty/bin/jetty.sh stop'
alias jr='sudo ~/jetty/bin/jetty.sh restart'

alias sa='defaults write com.apple.dock single-app -bool true; killall Dock'
alias ma='defaults delete com.apple.dock single-app; killall Dock'
alias capds='DEPLOY=stage cap deploy'
alias emacs='emacs -nw'

function e {
  if [ "$1" != '' ]; then
    touch $1
  fi
  open -a /Applications/Emacs.app $1
}

export GENI="/Users/lance/geni"
alias rd='cd $GENI && dropdb wg_dev -i && createdb wg_dev  && rake db:migrate --trace && rake db:initialize_defaults --trace'
alias rt='cd $GENI && dropdb wg_test   && createdb wg_test && rake db:test:prepare --trace'
export GEM_HOME=/usr/local

if [[ "$TERM" != "dumb" ]]; then
    PROMPT_COMMAND='GIT_BRANCH=`cut -c17- .git/HEAD 2> /dev/null`'
    PS1="\h:\W \[\033[01;33m\]\$GIT_BRANCH\[\033[00;38m\]$ \[\033]0;\h: \w\007\]"
    # set -o functrace
    # trap 'echo -ne "\033]0;${HOSTNAME%%.*}: $BASH_COMMAND\007"' DEBUG
fi