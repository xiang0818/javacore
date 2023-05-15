#!/bin/bash

# 获取本机IP地址
ip_addr=$(ip addr | grep 'inet ' | grep -v '127.0.0.1' | awk '{print $2}' | cut -d '/' -f1)

# 打包当前目录下的所有文件到log_x.tar.gz
tar -czf "log_${ip_addr}.tar.gz" .

# 启动Python HTTP服务器
python3 -m http.server 11111 &

# 打印提示信息
echo "已将当前目录下的文件打包到 log_${ip_addr}.tar.gz 文件中。"
echo "现在可以在浏览器中访问 http://${ip_addr}:11111/log_${ip_addr}.tar.gz 来下载打包的文件。"
