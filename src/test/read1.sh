#!/bin/bash


# read
# 请求输入， read 命令读取到的文本会立即被存储在一个变量里。


# -p 参数， p 是 prompt 的首字母，表示“提示”。
# 用 -n 参数可以限制用户输入的字符串的最大长度（字符数）
# 用 -s 参数可以隐藏输入内容，在用户输入密码时使用。
# 用 -t 参数可以限定用户的输入时间（单位：秒）超过这个时间，就不读取输入了。

read -p "请输入您的姓名：" -n 5 name
echo "hello $name !"


# read oneName towName
# echo "hello $oneName $towName !"
