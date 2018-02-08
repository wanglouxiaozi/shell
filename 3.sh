#!/bin/bash
i=2
j=3
a=`expr $i + $j`  #必须写成$a + $b,表达式和运算符之间要有空格 a=`expr 2 + 3`
echo "a= $a"
b=$((i+j))
echo "b= $b"
c=$(($i+$j))
echo "c= $c"
d=$(($i * $j))
echo "a= $d"


for i in $(cat README.md)
do 
	echo "$i"
done
