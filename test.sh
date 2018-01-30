#!/bin/bash

echo "Shell 传递参数实例"
echo "执行的文件名:$0"
echo "第一个参数为:$1"
echo "第二个参数为:$2"
echo "第三个参数为:$3"
echo "==========================================================================="


echo "Shell 传递参数实例"
echo "第一个参数为:$1"
echo "参数个数为:$#";
echo "传递的参数作为一个字符串显示:$*"
echo "传递的参数作为一个字符串显示:"$@""
echo "脚本运行的当前进程ID号:$$"
echo "后台运行的最后一个进程的ID号:$!"
echo "Shell使用的当前选项:$-"
echo "显示命令的最后退出状态:$?"
echo "==========================================================================="


echo "-- \$* 演示---"
for i in "$*"; do
	echo $i
done

echo "--\$@ 演示---"
for i in "$@"; do
	echo $i
done
echo "==========================================================================="

echo "-----输出 ls /etc 结果------"
#for i in $(ls /etc); do
#	echo $i
#done

for i in `ls /etc`; do
	echo $i
done
echo "==========================================================================="
=======
#!/usr/bin/env bash

echo "Hello World!"
your_name="runoob.com"
echo $your_name
echo {$your_name}
echo ${your_name}
for skill in Ada Coffe Action Java; do
    echo "I am good at ${skill}Script"
done
for file in 'ls /etc'; do
    echo ${file}
done
