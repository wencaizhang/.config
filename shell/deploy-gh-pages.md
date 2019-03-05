## 提交打包代码到 gh-pages 分支

GitHub 的提供了免费的静态网站托管服务，即位于以下三个位置的代码可以免费部署到 GitHub 的服务器上：

+ master 分支代码
+ master 分支的 docs 目录下的代码
+ gh-pages 分支的代码

而 master 分支通常为主分支，因此通常都会使用 gh-pages 分支来部署静态网站。

下面是一个打包部署脚本，可以自动执行编译打包的命令，并将得到的静态页面文件提交到 gh-pages 分支。

使用方式为：

1. 新建 deploy.sh 文件，将下面代码复制到 deploy.sh 文件中
2. 修改相应的打包命令和打包文件所在的目录以及代码仓库地址
3. 执行 `chmod +x ./deploy.sh` 命令，设置脚本的执行权限
4. 执行脚本 `./deploy.sh`。

```sh
#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run docs:build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/wencaizhang/vue-skeleton-antd.git master:gh-pages

# 返回到上一次的工作目录，这里是仓库根目录
cd -
```