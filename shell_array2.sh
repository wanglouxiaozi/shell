<<<<<<< HEAD
#!/bin/bash
#author:allen
#email:<allenwang@tvunetworks.com>

#读取数组
echo "读取数组"
my_array=(A "Bash" "C" De)

echo "第一个元素为:${my_array[0]}"
echo "第二个元素为:${my_array[1]}"
echo "第三个元素为:${my_array[2]}"
echo "第四个元素为:${my_array[3]}"
echo "====================================================================="


#获取数组中的所有元素
echo "获取数组中的所有元素"

my_array[0]=A
my_array[1]=B
my_array[2]=C
my_array[3]=D
echo "数组的元素为: ${my_array[*]}"
echo "数组的元素为: ${my_array[@]}"
echo "====================================================================="


#获取数组的长度
echo "获取数组的长度"

my_array[0]=A
my_array[1]=B
my_array[2]=C
my_array[3]=D
echo "数组元素的个数为: ${#my_array[*]}"
echo "数组元素的个数为: ${#my_array[@]}"
echo "====================================================================="


#《笔记列表》
#数组的值也可以写入变量
echo "数组的值也可以写入变量"

A=1
my_array=($A B C d)
echo "第一个元素为:${my_array[0]}"
echo "第二个元素为:${my_array[1]}"
echo "第三个元素为:${my_array[2]}"
echo "第四个元素为:${my_array[3]}"
echo "====================================================================="


#根据数组元素索引获取该数组元素值时，数组下标可为变量。
echo "根据数组元素索引获取该数组元素值时，数组下标可为变量。"
arr=(a b c d)
i=2
echo "arr[i]= ${arr[i]}"
echo "====================================================================="


#遍历数组
echo "遍历数组"

my_arry=(a b "c","d" abc)
echo "-----FOR循环遍历输出数组-------"
for i in ${my_arry[@]}
do
	echo $i
done
echo "====================================================================="


echo "-----while循环输出 使用 let i++ 自增-------"
j=0
while [ $j -lt ${#my_arry[@]} ]
do 
	echo ${my_arry[$j]}
	let j++
done
echo "====================================================================="


echo "-----while循环输出 使用 let "n++"自增: 多了双引号，其实不用也可以------"
n=0
while [ $n -lt ${#my_arry[@]} ]
do 
	echo ${my_arry[$n]}
	let "n++"
done
echo "====================================================================="


echo "-----while循环输出 使用 let m+=1 自增，这种写法其他编程中也常用"
m=0
while [ $m -lt ${#my_arry[@]} ]
do 
	echo ${my_arry[$m]}
	let m+=1
done
echo "====================================================================="


echo "-----while循环输出 使用 a=\$[\$a+1]自增，个人觉得此种写法比较装逼------"
a=0
while [ $a -lt ${#my_arry[@]} ]
do 
	echo ${my_arry[$a]}
	a=$[$a+1]
done
echo "====================================================================="
=======
#!/usr/bin/env bash

array_name=(value0 value1 value2 value3)
array_name=(
value0
value1
value2
value3
)

#还可以单独定义数组的各个分量
array_name[0]=value0
array_name[1]=value1
array_name[n]=valuen
#可以不使用连续的下标，而且下标的范围没有限制


#读取数组
#读取数组元素值的一般格式是：
#${数组名[下标]}
valuen=${array_name[n]}


#获取数组的长度
#获取数组长度的方法与获取字符串长度的方法相同，例如:
#获得数组元素的个数
length=${#array_name[@]}

#或者
length=${#array_name[*]}

#取得数组单个元素的长度
lengthn=${#array_name[n]}
>>>>>>> origin/master
