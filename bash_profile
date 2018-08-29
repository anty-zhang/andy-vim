# ----------------------------------------------------------------------------------------
# ENVIROMENT CONFIGURATION
# ----------------------------------------------------------------------------------------
export PS1="\u@\h:\w $"
# export CLICOLOR=1
export LANG="zh_CN.UTF-8"
export LC_CTYPE="zh_CN.UTF-8"


# ----------------------------------------------------------------------------------------
# MAKE TERMINAL BETTER
# ----------------------------------------------------------------------------------------
alias re='cd ~/all/resource'
alias code='cd ~/all/resource/code'
alias env2='source ~/anaconda3/bin/activate py2'
alias env3='source ~/anaconda3/bin/activate tf'
alias denv='source ~/anaconda3/bin/deactivate'

# ----------------------------------------------------------------------------------------
# NETWORKING
# ----------------------------------------------------------------------------------------
alias myip='curl ip.cn'                             # myip:         Public facing IP Address
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs
# alias vpn='ssh -N -D 7070 -i ~/.ssh/andy-zhang.pem ubuntu@127.0.0.1 &'

# ----------------------------------------------------------------------------------------
# MYSQL CONFIGURATION
# ----------------------------------------------------------------------------------------
export MYSQL_HOME=/usr/local/mysql
export PATH=$PATH:$MYSQL_HOME/bin

# ----------------------------------------------------------------------------------------
# JAVA HOME
# ----------------------------------------------------------------------------------------
# export JAVA_HOME=/Library/Java/Home
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

# export PS1='[\[\[\e[31m\]xiaoqiang \w]\$\[\e[m\]'
# export PS1='[\[\e[32m\]#\##\[\e[31m\]\u@\[\e[36m\]\h \w]\$\[\e[m\]'

# ----------------------------------------------------------------------------------------
# SPARK ENV
# ----------------------------------------------------------------------------------------
# export SPARK_HOME=/Users/guoqiangzhang/Documents/spark/spark-1.6.0-bin-hadoop2.6
# export SPARK_HOME=/data/app/spark-1.6.1-bin-hadoop2.6
# export PYTHONPATH=$PYTHONPATH:$SPARK_HOME/python
# export PATH=$PATH:$SPARK_HOME/bin

# ----------------------------------------------------------------------------------------
# SCALA ENV
# ----------------------------------------------------------------------------------------
export SCALA_HOME=/data/app/scala-2.11.8
export PATH=$PATH:$SCALA_HOME/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$SCALA_HOME/lib

# ----------------------------------------------------------------------------------------
# HADOOP SETTING
# ----------------------------------------------------------------------------------------
# export HADOOP_HOME=/opt/hadoop-2.6.0
export HADOOP_HOME=/data/app/hadoop-2.6.0-cdh5.7.0
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
#export HADOOP_OPTS="$HADOOP_OPTS -Djava.library.path=$HADOOP_HOME/lib/native"
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export YARN_HOME=$HADOOP_HOME
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export HDFS_CONF_DIR=$HADOOP_HOME/etc/hadoop
export YARN_CONF_DIR=$HADOOP_HOME/etc/hadoop
#export JAVA_LIBRARY_PATH=$HADOOP_HOME/lib/native
export PATH=$PATH:$HADOOP_HOME/bin
export HADOOP_CLASSPATH=/data/app/hadoop-2.6.0-cdh5.7.0/share/hadoop/common/lib/

# ----------------------------------------------------------------------------------------
# HIVE SETTING
# ----------------------------------------------------------------------------------------
# export HIVE_HOME=/opt/apache-hive-2.0.0-bin
export HIVE_HOME=/data/app/hive-1.1.0-cdh5.7.0
export HIVE_CONF_DIR=$HIVE_HOME/conf
export PATH=$PATH:$HIVE_HOME/bin
## export CLASSPATH=$CLASSPATH:
#export CLASSPATH=.:$JAVA_HOME/lib:$HADOOP_HOME/lib/native:$SPARK_HOME/lib:$HADOOP_HOME/share/hadoop/common/lib:$HADOOP_HOME/share


# ----------------------------------------------------------------------------------------
# # ls 颜色配置方案
# LSCOLORS中的值代表的意思，这22个字母2个字母一组分别指定一种类型的文件或者文件
# 夹显示的字体颜色和背景颜色。从第1组到第11组分别指定的文件或文件类型为：
# directory
# symbolic link
# socket
# pipe
# executable
# block special
# character special
# executable with setuid bit set
# executable with setgid bit set
# directory writable to others, with sticky bit
# directory writable to others, without sticky bit
# 下面是颜色的子母对照：
# a 黑色
# b 红色
# c 绿色
# d 棕色
# e 蓝色
# f 洋红色
# g 青色
# h 浅灰色
# A 黑色粗体
# B 红色粗体
# C 绿色粗体
# D 棕色粗体
# E 蓝色粗体
# F 洋红色粗体
# G 青色粗体
# H 浅灰色粗体
# x 系统默认颜色
# ----------------------------------------------------------------------------------------
export LS_OPTIONS='--color=auto'        # 如果没有指定，则自动选择颜色
export CLICOLOR='Yes'                   # 是否输出颜色
export LSCOLORS='CxfxcxdxbxegedabagGxGx'    #指定颜色
# alias l.='ls -d .* --color=auto'
alias ll='ls -alh'
# alias ls='ls --color=auto'
# alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'

# ----------------------------------------------------------------------------------------
# vim 配置颜色配置方案，需要配置VIMRUNTIME环境变量
export VIMRUNTIME=/usr/local/Cellar/vim/8.1.0250/share/vim/vim81
export VIM=/usr/local/Cellar/vim/8.1.0250
export PATH=$VIM/bin:$PATH

# ----------------------------------------------------------------------------------------
# grep 颜色
alias grep='grep --colour=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
# alias grep='grep --col'

# ----------------------------------------------------------------------------------------
# less 颜色配置
# brew install source-highlight
# reference: http://liyangliang.me/posts/2013/11/less-with-syntax-highlight-and-line-number/
export LESSOPEN="| /usr/local/Cellar/source-highlight/3.1.8_9/bin/src-hilite-lesspipe.sh %s"
export LESS=" -R -N "


# ----------------------------------------------------------------------------------------
# man颜色
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
## 指定less为默认阅读器
export PAGER=less

# ----------------------------------------------------------------------------------------
# tail 颜色
# sudo pip install colout
# tail -f log 2>&1 | colout error red | colout success green
