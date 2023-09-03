# 基础 for 循环

for i in 'i1' 'i2' 'i3' 'i4'; do
  echo $i
done

# 遍历 ls 命令的执行结果
listfile=$(ls)
for file in $listfile; do
  echo $file
done

# 借助 seq 的 for 循环（seq后面会详细讲解）
for i in $(seq 1 10); do
  echo $i
done
