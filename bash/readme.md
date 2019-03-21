

### 单独创建文件定义别名 alias


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

### 使用命令将别名写入文件


```
"alias bk5='cd ../../../../..'" >> ~/.bash_aliases && source ~/.bash_aliases
```

### 查看某个别名的真实命令

例如查看别名 `bk3` 可以使用 `alias`:

```bash
# 显示定义别名的代码
alias bk3
```

或者使用 `type`

```bash
# 语义化显示别名的含义
type bk3
```

![查看某个别名的真实命令](http://xiaoshujiang.wencaizhang.com/xiaoshujiang/2019/view-the-true-command-via-alias-and-type.png)

