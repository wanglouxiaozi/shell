#!/bin/bash

#Shell 基本运算符
val=`expr 2 + 2`
echo "两数之和为: $val"
echo "========================================================================="


#《算数运算符》
echo "《算数运算符》"
echo "a=10 b=20"
a=10
b=20

val=`expr $a + $b`
echo "a + b : $val"

val=`expr $a - $b`
echo "a - b : $val"

val=`expr $a \* $b`   #乘号(*)前边必须加反斜杠(\)才能实现乘法运算
echo "a * b : $val"

val=`expr $b / $a`
echo "b / a : $val"

val=`expr $b % $a`
echo "b % a : $val"

if [ $a == $b ]
then 
	echo "a 等于 b"
fi

if [ $a != $b ]
then 
	echo "a 不等于 b"
fi
echo "========================================================================="


#《关系运算符》
#-eq 检测两个数是否相等，相等返回True                 [ $a -eq $b ]返回false
#-ne 检测两个数是否相等，不相等返回True               [ $a -ne $b ]返回true
#-gt 检测左边的数是否大于右边的，如果是，返回True     [ $a -gt $b ]返回false
#-lt 检测左边的数是否小于右边的，如果是，返回True     [ $a -lt $b ]返回true
#-ge 检测左边的数是否大于等于右边的，如果是，返回True [ $a -ge $b ]返回false
#-le 检测左边的数是否小于等于右边的，如果是，返回True [ $a -le $b ]返回true

echo "《关系运算符》"
if [ $a -eq $b ] 
then 
	echo "$a -eq $b : a 等于 b"
else 
	echo "$a -eq $b : a 不等于 b"
fi

if [ $a -ne $b ]
then 
	echo "$a -ne $b : a 不等于 b"
else 
	echo "$a -ne $b : a 等于 b"
fi

if [ $a -gt $b ]
then 
	echo "$a -gt $b : a 大于 b"
else
	echo "$a -gt $b : a 不大于 b"
fi

if [ $a -lt $b ]
then
	echo "$a -lt $b : a 小于 b"
else
	echo "$a -lt $b : a 不小于 b"
fi

if [ $a -ge $b ]
then 
	echo "$a -ge $b : a 大于或等于 b"
else
	echo "$a -ge $b : a 小于 b"
fi

if [ $a -le $b ]
then 
	echo "$a -le $b : a 小于或等于 b"
else
	echo "$a -le $b : a 大于 b"
fi
echo "========================================================================="


#《布尔运算符》
# !  非运算，表达式为True则返回false,否则返回true          [ ! false ] 返回True
# -o 或运算，有一个表达式为true,则返回true。               [ $a -lt 20 -o $b -gt 100 ]返回true
# -a 与运算，两个表达式都为True才返回True。                [ $a -lt 20 -a $b -gt 100 ]返回false

echo "《布尔运算符》"
if [ $a != $b ] 
then 
	echo "$a != $b : a 不等于 b"
else 
	echo "$a != $b : a 等于 b"
fi

if [ $a -lt 100 -a $b -gt 15 ]
then 
	echo "$a 小于100且 $b 大于15 : 返回true"
else
	echo "$a 小于100且 $b 大于15 : 返回false"
fi

if [ $a -lt 100 -o $b -gt 100 ]
then 
	echo "$a 小于100 或 $b 大于100 :返回true"
else
	echo "$a 小于100 或 $b 大于100 :返回false"
fi

if [ $a -lt 5 -o $b -gt 100 ]
then 
	echo "$a 小于5 或者 $b 大于100 : 返回true"
else
	echo "$a 小于5 或者 $b 大于100 : 返回false"
fi
echo "========================================================================="


#《逻辑运算符》
# && 逻辑的 AND       [[ $a -lt 100 && $b -gt 100 ]] 返回false
# || 逻辑的 OR        [[ $a -lt 100 || $b -gt 100 ]] 返回true
echo "《逻辑运算符》"
a=10
b=20

if [[ $a -lt 100 && $b -gt 100 ]]
then 
	echo "返回true"
else
	echo "返回false"
fi

if [[ $a -lt 100 || $b -gt 100 ]]
then 
	echo "返回true"
else
	echo "返回false"
fi
echo "========================================================================="


#《字符串运算符》
# =   检测两个字符串是否相等，相等返回true.    [ $a = $b ] 返回false
# !=  检测两个字符串是否相等，不相等返回true.  [ $a != $b ] 返回true
# -z  检测字符串长度是否为0, 为0返回true.      [ -z $a] 返回false
# -n  检测字符串长度是否为0, 不为0返回true.    [ -n $a] 返回true
# str 检测字符串是否为空，不为空返回true.      [ $a ] 返回true

echo "《字符串运算符》"
a="abc"
b="efg"

if [ $a = $b ]
then 
	echo "$a = $b : a 等于 b"
else
	echo "$a = $b : a 不等于 b"
fi

if [ $a != $b ]
then 
	echo "$a != $b : a 不等于 b"
else 
	echo "$a != $b : a 等于 b"
fi

if [ -z $a ]
then 
	echo "-z $a : 字符串长度为0"
else
	echo "-z $a : 字符串长度不为0"
fi

if [ -n $a ]
then 
	echo "-n $a : 字符串长度不为0"
else
	echo "-n $a : 字符串长度为0"
fi

if [ $a ]
then 
	echo "$a : 字符串不为空"
else
	echo "$a : 字符串为空"
fi
echo "========================================================================="
	
	 
#《文件测试运算符》
echo "《文件测试运算符》"
file="/home/allenwang/Shell/test.sh"

if [ -r $file ]
then 
	echo "文件可读"
else
	echo "文件不可读"
fi


if [ -w $file ]
then 
	echo "文件可写"
else
	echo "文件不可写"
fi

if [ -x $file ]
then 
	echo "文件可执行"
else
	echo "文件不可执行"
fi

if [ -f $file ]
then 
	echo "文件为普通文件"
else
	echo "文件为特殊文件"
fi

if [ -d $file ]
then 
	echo "文件是个目录"
else
	echo "文件不是个目录"
fi

if [ -s $file ]
then 
	echo "文件不为空"
else
	echo "文件为空"
fi

if [ -e $file ] 
then 
	echo "文件存在"
else
	echo "文件不存在"
fi
echo "========================================================================="
