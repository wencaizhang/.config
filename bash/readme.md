

### 设置别名 `alias`


单独创建一个文件 `~/.bash_aliases` 用来定义别名，避免直接在` ~/.bashrc` 文件中添加。

后在 `~/.bashrc` 文件中添加如下代码，使其加载 `~/.bash_aliases` 文件：


```bash
if [ -f ~/.bash_aliases ]; then
      . ~/.bash_aliases
fi
```

**修改之后需要重新加载 `.bashrc` 文件：

```bash
source ~/.bashrc
```

---

编辑配置文件 `/etc/profile`，在文件中添加配置代码，例如：

```bash
alias ll='ls -l'
alias cp='cp -i'
alias gs='git status'
alias toroot='cd /www/html/'
```

*注意：等号两侧不能有空格*


美化 git bash 可参考文章：[在 Windows 上打造体验绝佳的 Linux 终端（非 wsl）](https://juejin.im/post/5bd5a08cf265da0add520772)
