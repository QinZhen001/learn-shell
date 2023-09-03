#!/bin/bash

read -p "输入文件路径：" file

if [ -f $file ]; then
  echo "文件存在"
else
  echo "文件不存在"
fi
