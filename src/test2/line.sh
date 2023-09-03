read -p "Enter the file name: " filename

if [ -f "$filename" ]; then
  # Read file line by line
  while IFS= read -r line; do
    echo "$line"
    # 将文件"$filename"作为输入输入到命令"done"中。
    # 这意味着命令"done"将读取文件"$filename"的内容作为输入进行处理。
  done <"$filename"
else
  echo "File not found!"
fi
