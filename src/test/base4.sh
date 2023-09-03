# 函数

print() {
  echo "hello world"
}
print

# 传递参数
print1() {
  echo "hello $1"
}
print1 "lion"

# 函数返回值
print2() {
  return 1
}
print2
# $? 获取到的是上一个函数的返回值
echo "函数的返回值是 $?" 


# 统计文件行数实例：
# line_in_file() {
#   cat $1 | wc -l
# }
# # 函数的返回值赋给变量了
# line_num=$(line_in_file $1)
# echo "这个文件 $1 有 $line_num 行"


# 函数的局部变量
local_var(){
  local var1='local1'
  echo "函数内部的变量 var1 = $var1"
}
local_var


# 函数重载命令
ls(){
  command ls -lh
}
ls
