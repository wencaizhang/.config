###
# *注意：等号两侧不能有空格*
###

# 代替键盘上难以触及的 ~ 键
alias home="cd ~"

alias cd.desk="cd ~/Desktop"
alias cd.down="cd ~/Download"

# 同样也可以为一些深层却很常用的目录设置别名
# 如：宝塔面包的 nginx 配置目录
alias ng="cd /www/server/panel/vhost/nginx"

# 回退多级目录
alias bk1="cd .."  
alias bk2="cd ../.."  
alias bk3="cd ../../.."  
alias bk4="cd ../../../.."
alias bk5="cd ../../../../.."
alias ..="cd .."
alias 。。="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."


# 清除屏幕
alias cls="clear"
alias c="clear"

# ls 相关
alias cls='clear'
alias la='ls -a'
alias ll='ls -la'
alias l.='ls -d .*'

# git 相关
alias gs='git status'
alias ga='git add'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gpull='git pull'
alias gpush='git push'
alias gopen="git open"
alias gitconfig="git config user.name wencaizhang && git config user.email 1052642137@qq.com"

# node
alias ydev="yarn dev"
alias ndev="npm run dev"
alias hs="http-server"

# 解压
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

# other for linux
alias vi='vim'
alias r='ranger'
alias grep="grep --color=auto"
alias tree="tree -I '*svn|*node_module*'"


# 命令行启动 APP for MacOS
# vscode
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias qs='open -a QSpace'


# alias ifconfig=$(/sbin/ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}')
