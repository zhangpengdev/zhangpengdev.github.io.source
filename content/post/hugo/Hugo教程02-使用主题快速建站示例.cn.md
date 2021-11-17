+++
draft = true
date = 2021-11-17T09:34:38+08:00
title = "Hugo教程02-使用主题快速建站示例"
description = "使用主题hugo-coder搭建个人博客示例"
slug = ""
authors = []
tags = []
categories = []
externalLink = ""
series = []

+++



# 使用主题hugo-coder搭建个人博客

```bash
# 初始化站点blog
$ hugo new site blog

$ cd blog/

# 初始化blog为一个git仓库
$ git init
 
# 以git submodule形式挂载主题
$ git submodule add https://github.com/luizdepra/hugo-coder.git themes/hugo-coder

# 直接使用hugo-coder的例子和配置
$ cp themes/hugo-coder/exampleSite/* ./ -r

# 启动服务
$ hugo serve
```

> 如果启动报 **Failed to get ...**之类的错误是因为主题提供的例子里使用的shortcode应用了墙内无法访问的数据，例如youtube等，根据报错信息找到对应文件把里面的引用删除即可。例如content/posts/rich-content.md，content/posts/rich-content.md，content/posts/rich-content.pt-br.md这几个文件里类似< youtube ZJthWmvUzzc >这样的内容。



### 修改配置&内容创建

> 根目录下找到config.toml配置文件，根据需要修改里面的配置
>
> 在content目录按照例子创建编写文章即可或使用如下命令创建文章

```bash
$ hugo new posts/first.md
```



```bash
# 生成静态页面
$ hugo -D
```

> 执行hugo -D之后会看到在站点根目录下生成了一个public文件夹，直接把这个文件夹部署到自己的服务器（推荐使用nginx）或者Github Page， Gitee Page等即可
