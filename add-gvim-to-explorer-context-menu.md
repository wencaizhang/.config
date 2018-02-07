# 将 gvim 添加到右键菜单中

gvim 安装时默认会添加到右键菜单中（写入系统注册表），重装系统之后，gvim 仍然能够使用（gvim 安装在非系统盘），但右键菜单不再显示，略有不便。

如果不想重新安装 gvim，可以自己动手将其写入注册表。

新建一个 reg 格式文件，如：`gvim.edit.reg`，文件内容如下：
```
Windows Registry Editor Version 5.00

[HKEY_CLASSES_ROOT\*\Shell\edit with vim]

@="edit with vim"

[HKEY_CLASSES_ROOT\*\Shell\edit with vim\command]

@="\"D:\\software\\vim\\vim74\\gvim.exe\" \"%1\""

```

其中 `@="edit with vim"` 指定右键菜单中显示的文本，`@="\"D:\\software\\vim\\vim74\\gvim.exe\" \"%1\""` 指定 gvim 的路径，此处需要替换为自己电脑对应的路径方能生效。

最后，保存并双击执行此文件，在系统弹出的提示框中选择“是（Y）”，即可。

题外话，此方式也可以用于其他的便携版软件。
