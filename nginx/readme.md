### 二级域名指向静态目录

```conf
server {
  listen       80;
  server_name  hexo.wencaizhang.com;
  location / {
    root /www/wwwroot/hexo.wencaizhang.com/hexo-site/;
    index  index.html index.htm;
  }
}
```

### 反向代理

```conf
server {
  server_name docker.wencaizhang.com;
  listen 80;
 
  location / {
    proxy_pass http://localhost:8000;
    proxy_set_header Host $host;
    proxy_set_header X-Forward-For $remote_addr;
  }
}
```

### 相关命令

+ 启动

```bash
/etc/init.d/nginx start
```

+ 停止
```bash
/etc/init.d/nginx stop
```

+ 重启
```bash
/etc/init.d/nginx restart
```

+ 重新加载配置文件
```bash
/etc/init.d/nginx reload
```


