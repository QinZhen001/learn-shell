# learn-shell



## 基础

[学习如何编写 Shell 脚本](https://juejin.cn/post/6930013333454061575)

不是 root 用户的话，需要给脚本添加可执行权限才可以运行， chmod +x hello.sh



## */ 通配符

在 shell 中，*/ 表示一个通配符，用于匹配当前目录下所有的子目录。

例如，如果当前目录下有子目录 a、b 和 c，那么 */ 表示匹配所有这些子目录，相当于 a/ b/ c/。这个通配符可以与其他命令结合使用，比如 ls */ 表示列出当前目录下所有子目录的内容。



### wc

[https://www.geeksforgeeks.org/wc-command-linux-examples/](https://www.geeksforgeeks.org/wc-command-linux-examples/)

```bash
$ wc state.txt
 5  7 58 state.txt
```



### tr

[https://www.runoob.com/linux/linux-comm-tr.html](https://www.runoob.com/linux/linux-comm-tr.html)

Linux tr 命令用于转换或删除文件中的字符。



例子：

使用 tr 命令大小写转换后

```bash
$ cat testfile | tr a-z A-Z #转换后的输出  
```



### grep

[https://www.runoob.com/linux/linux-comm-grep.html](https://www.runoob.com/linux/linux-comm-grep.html)

grep (global regular expression) 命令用于查找文件里符合条件的字符串或正则表达式。



例子：

```bash
grep hello file.txt
```



### ls

[linux文件权限查看及修改（实用）](https://www.cnblogs.com/cb0327/p/6189586.html)

列出当前目录下的文件和目录的详细信息：

```bash
ls -l 文件名称
```

例子：

```
drwxr-xr-x   2 root root  4096 2009-01-14 17:34 bin  
```

文件类型代码：[ d ]–目录、[ - ]–文件、[ l ]–链接、[ b ]–可储存周边设备、[ c ]–序列设备。

文件权限属性：[ r ]–可读、[ w ]–可写、[ x ]–可执行。

分析： (我们假设第一个元素开始index为0)

* 0：代表是文件还是目录，还是其他的类型（这里d:表示是目录） 
* 123 ：表示拥有人的权限 （这里rwx:代表拥有人有可读，可写，可执行的权限） 
* 456：表示同组群使用者权限（这里r-x代表同组群使用者有可读，可执行权限） 
* 789：表示其他使用者权限（这里r-x代表其他使用者有可读，可执行权限）



#### 显示文件夹

可以使用`ls`命令来列出当前路径下的所有文件和文件夹。使用`-d`选项来只显示文件夹，而不显示文件。

```shell
ls -d */
```





### chmod

[https://www.runoob.com/linux/linux-comm-chmod.html](https://www.runoob.com/linux/linux-comm-chmod.html)

chmod（英文全拼：change mode）命令是控制用户对文件的权限的命令



### touch

[https://www.runoob.com/linux/linux-comm-touch.html](https://www.runoob.com/linux/linux-comm-touch.html)

Linux touch命令用于修改文件或者目录的时间属性，包括存取时间和更改时间。若文件不存在，系统会建立一个新的文件。



### IFS

IFS是internal field separator的缩写，shell的特殊环境变量。ksh根据IFS存储的值，可以是空格、tab、换行符或者其他自定义符号，来解析输入和输出的变量值。

**The default value for `IFS` consists of whitespace characters**

 [https://unix.stackexchange.com/questions/184863/what-is-the-meaning-of-ifs-n-in-bash-scripting](https://unix.stackexchange.com/questions/184863/what-is-the-meaning-of-ifs-n-in-bash-scripting)

例子：

```bash
IFS=$'\n'
```

例子： 设置分隔符

```bash
IFS='|'
text='a a a a|b b b b|c c c c'
for i in $text;do echo "i=$i";done
```





## 补充



### ls 颜色

使用ls时显示的文件颜色

1. 绿色：表示该文件是可执行文件，例如二进制文件或可执行脚本。
2. 蓝色：表示该文件是目录。
3. 青色（浅蓝色）：表示该文件是链接文件（符号链接）。
4. 红色：表示该文件是压缩文件，例如.tar、.gz等压缩文件格式。
5. 灰色：表示该文件是其他文件或目录。
6. 黄色：表示该文件是设备文件，例如/dev目录下的设备文件。
7. 白色：表示该文件是普通文件。







## 问题 



###  变量赋值

变量赋值的表达式等号左右一定要紧挨着

错误写法：

```bash
n1 = "1"
```

正确写法：

```bash
n1="1"
```



### if 表达式

if 表达式[]中记得左右留有空格

错误写法：

```bash
if [! -e $1]
```

正确写法：

```bash
if [ ! -e $1 ]
```

