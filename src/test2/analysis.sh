# if [ -z $1]; then
#   echo "请输入文件"
#   exit
# fi

# if [ ! -e $1]; then
#   echo "文件不存在"
#   exit
# fi

# 定义统计函数
statistics() {
  # 循环字母a-z
  for char in {a..z}; do # 循环字母a-z
    echo "$char - $(grep -io "$char" $1 | wc -l)" | tr /a-z/ /A-Z/ >>tmp.txt
  done
  sort -rn -k 2 -t - tmp.txt
  # rm tmp.txt
}

statistics "./words.txt" # 调用函数并传入 $1 参数
