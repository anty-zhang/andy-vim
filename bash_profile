
###############################################################################
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
###############################################################################
export LS_OPTIONS='--color=auto'        # 如果没有指定，则自动选择颜色
export CLICOLOR='Yes'                   # 是否输出颜色
export LSCOLORS='CxfxcxdxbxegedabagGxGx'    #指定颜色

###############################################################################
# vim 配置颜色配置方案，需要配置VIMRUNTIME环境变量
export VIMRUNTIME=/usr/local/Cellar/vim/8.1.0250/share/vim/vim81

###############################################################################
# grep 颜色
alias grep='grep --colour=auto'

###############################################################################
# less 颜色配置
# brew install source-highlight
# reference: http://liyangliang.me/posts/2013/11/less-with-syntax-highlight-and-line-number/
export LESSOPEN="| /usr/local/Cellar/source-highlight/3.1.8_9/bin/src-hilite-lesspipe.sh %s"
export LESS=" -R -N "


###############################################################################
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

###############################################################################
# tail 颜色
# sudo pip install colout
# tail -f log 2>&1 | colout error red | colout success green
