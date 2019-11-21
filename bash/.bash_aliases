###
# *注意：等号两侧不能有空格*
###

# 代替键盘上难以触及的 ~ 键
alias home="cd ~"

# 同样也可以为一些深层却很常用的目录设置别名
# 如：宝塔面包的 nginx 配置目录
alias ng="cd /www/server/panel/vhost/nginx"

# 回退多级目录
alias bk1="cd .."
alias bk2="cd ../.."
alias bk3="cd ../../.."
alias bk4="cd ../../../.."
alias bk5="cd ../../../../.."

# ls 相关
alias cls='clear'
alias ll='ls -l'
alias la='ls -a'

# git 相关
alias gs='git status'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Cr eset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# 解压
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

# other
alias vi='vim'
alias grep="grep --color=auto"
alias tree="tree -I '*svn|*node_module*'"
