# while 循环
while [ -z $response ] || [ $response != "yes" ]; do
  read -p 'Say yes while：' response
done

res="no"
until [ $res = 'yes' ]; do
  read -p 'Say yes until：' res
done
