# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias vi='vim'

# PS1
export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h:\[\e[33m\]\w\[\e[0m\]\n\$ '

# Locale
export LANG=C

# Pig
export HADOOP_HOME="/usr/lib/hadoop"
export HBASE_HOME="/usr/lib/hbase"
export PIG_PPUDF_JAR="/x/cdh/pp_libs/pig/PigUDF.jar"
alias pig="pig -p ppudf_jar=$PIG_PPUDF_JAR"

# Vim scheme
export TERM=xterm-256color
