---
title: "Hugo教程"
date: 2021-11-15T15:02:42+08:00
draft: false
---



# Hugo 是什么？

[Hugo](https://gohugo.io/) 是由Go语言实现的静态站点生成框架。



[官网地址](https://gohugo.io/)

[Github 官方源码](https://github.com/gohugoio/hugo)
[Gitee 源码](https://gitee.com/mirrors/Hugo-Go)



## [如何安装](https://gohugo.io/getting-started/installing/)

我使用的是Deepin系统，所以和Debain安装方式一样，也可以直接下载二进制deb包进行安装。

```bash
sudo apt-get install hugo
```



# 使用Hugo建站

## 创建站点

```bash
# 在当前执行命令的目录下创建test_site目录并初始化为站点
$ hugo new site test_site
```

## 给站点添加主题

以下是使用git方式，需要安装git或者直接下载到themes也行，后期为了方便更新主题推荐使用git submodule 方式

其他主题可以到[这里](https://themes.gohugo.io/)选择： https://themes.gohugo.io/

```bash
$ cd test_site/
$ git init
$ git submodule add https://github.com/theNewDynamic/gohugo-theme-ananke.git themes/ananke
```

### 把主题添加进配置

```bash
# 注意要加上“\”转义，或者直接使用文本编辑器在添加一行theme = "ananke"
$ echo theme = \"ananke\" >> config.toml
```

## 创建内容

如果手动创建，推荐使用content/<CATEGORY>/<FILE>.<FORMAT>目录形式，以下使用命令创建

使用命令方式，文章头部会自动帮你创建标题，时间等信息

```bash
$ hugo new posts/first.md

# 初始内如如下，注意draft: true是草稿状态，hugo默认是不会发布的，所以hugo serve启动服务时是看不到刚才创建的内容的
$ cat first.md 
---
title: "First"
date: 2021-11-15T17:08:50+08:00
draft: true
---
```

## 启动站点

```bash
# 注意要在站点根目录下启动，否则无法启动
$ cd ~/Git_rep/test_site/
$ hugo serve
```

输出如下启动成功

```
Start building sites … 
hugo v0.89.2-63E3A5EB+extended linux/amd64 BuildDate=2021-11-08T15:22:24Z VendorInfo=gohugoio

                   | EN  
-------------------+-----
  Pages            |  7  
  Paginator pages  |  0  
  Non-page files   |  0  
  Static files     |  1  
  Processed images |  0  
  Aliases          |  0  
  Sitemaps         |  1  
  Cleaned          |  0  

Built in 61 ms
Watching for changes in /home/roc/Git_rep/test_site/{archetypes,content,data,layouts,static,themes}
Watching for config changes in /home/roc/Git_rep/test_site/config.toml, /home/roc/Git_rep/test_site/themes/ananke/config.yaml
Environment: "development"
Serving pages from memory
Running in Fast Render Mode. For full rebuilds on change: hugo server --disableFastRender
Web Server is available at http://localhost:1313/ (bind address 127.0.0.1)
Press Ctrl+C to stop

```

浏览器访问http://localhost:1313可以看到网页但是没有刚才创建的内容，如需看草稿内容启动时加 -D 参数

```
$ hugo serve -D
```

## 构建生成静态页面

```bash
$ hugo -D
```

以上命令默认会在 ./public/ 下生成内容，如需自己指定使用参数**( -d/--destination)**或者在配置文件里增加**publishdir**配置

![公众号](http://www.doc360.top/images/wechat/qrcode_serch.png)
