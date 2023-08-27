#!/bin/bash

# 执行的命令主体
echo "hello world"

# 输出多行文本
echo "
  hello
  world
"
 # 如果不添加 -e 则会原样输出，添加了 -e 输出则会换行
echo -e "hello \n world"

echo "---------------------------------"

# 使用变量
message="Hello World 1111" 
# 打印message变量
echo $message 


# 参数变量
# 可以这样调用我们的脚本文件 ./variable.sh 参数1 参数2 ... 其中参数1、参数2...被称为“参数变量”。
# shift 命令常被用在循环中，使得参数一个接一个地被处理。
echo "第一个参数是 $1"
shift
echo "第一个参数是 $1"


# 数组
array=(1 2 3 4 5)
# 访问数组
echo ${array[2]} # 访问数组（bash下标是从0开始）
echo ${array[*]} # 使用*号访问数组所有的值


echo "---------------------------------"
