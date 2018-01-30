#!/bin/bash

#1、《 if else 》
#if 语句语法格式：

#if condition
#then
#    command1 
#    command2
#    ...
#    commandN 
#fi

#写成一行（适用于终端命令提示符）：

#if [ $(ps -ef | grep -c "ssh") -gt 1 ]; then echo "true"; fi

#末尾的fi就是if倒过来拼写，后面还会遇到类似的。



#if else
#if else 语法格式：

#if condition
#then
#    command1 
#    command2
#    ...
#    commandN
#else
#    command
#fi



#if else-if else
#if else-if else 语法格式：

#if condition1
#then
#    command1
#elif condition2 
#then 
#    command2
#else
#    commandN
#fi


a=10
b=20
if [ $a == $b ]
then 
	echo "a等于b"
elif [ $a -gt $b ]
then
	echo "a大于b"
elif [ $a -lt $b ]
then 
	echo "a小于b"
else
	echo "没有符合的条件"
fi


#if else 语句经常与test命令结合使用
num1=$[2*3]
num2=$[1+5]
if test $[num1] -eq $[num2]; then
	echo "两个数字相等!"
else 
	echo "两个数字不相等!"
fi
echo "================================================="




#2、《for循环》
#与其他编程语言类似，Shell支持for循环。

#for循环一般格式为：
#for var in item1 item2 ... itemN
#do
#    command1
#    command2
#    ...
#    commandN
#done

#写成一行：
#for var in item1 item2 ... itemN; do command1; command2… done;
#当变量值在列表里，for循环即执行一次所有命令，使用变量名获取列表中的当前取值。命令可为任何有效的shell命令和语句。in列表可以包含替换、字符串和文件名。
#in列表是可选的，如果不用它，for循环使用命令行的位置参数。 
 
#例如，顺序输出当前列表中的数字：
for loop in 1 2 3 4 5
do
    echo "The value is: $loop"
done

#顺序输出字符串中的字符:
for str in "This is a string"
do 
	echo $str
done
echo "================================================="





#3、《while 语句》
#<1>while循环用于不断执行一系列命令，也用于从输入文件中读取数据；命令通常为测试条件。其格式为：
#while condition
#do
#    command
#done

#以下是一个基本的while循环，测试条件是：如果int小于等于5，那么条件返回真。int从0开始，每次循环处理时，int加1。运行上述脚本，返回数字1到5，然后终止。 
int=1
while (( $int<=5 ))
do
	echo $int
#	let "int++"
	let int++
done


#while循环可用于读取键盘信息。下面的例子中，输入信息被设置为变量FILM，按<Ctrl-D>结束循环。 
echo "按下 <CTRL-D> 退出"
echo -n "输入你喜欢的网站名: "
while read FILM
do
	echo "是的!$FILM 是一个好网站"
done


#<2>无限循环
#无限循环语法格式:
#while :
#do
#	command
#done

#或者

#while True
#do
#	command
#done

#或者

#for(( ; ; ))


#<3>until循环
# until循环执行一系列命令直至条件为真时停止。
#until循环与while循环在处理方式上刚好相反。
#一般while循环优于until循环，但在某些时候—也只是极少数情况下，until循环更加有用。
#until 语法格式:
#until condition
#do
#    command
#done
#条件可为任意测试条件，测试发生在循环末尾，因此循环至少执行一次—请注意这一点。


#<4> case
#Shell case语句为多选择语句。可以用case语句匹配一个值与一个模式，如果匹配成功，执行相匹配的命令。case语句格式如下：
#case 值 in
#模式1)
#    command1
#    command2
#    ...
#    commandN
#    ;;
#模式2）
#    command1
#    command2
#    ...
#    commandN
#    ;;
#esac
#case工作方式如上所示。取值后面必须为单词in，每一模式必须以右括号结束。取值可以为变量或常数。匹配发现取值符合某一模式后，其间所有命令开始执行直至 ;;。
#取值将检测匹配的每一个模式。一旦模式匹配，则执行完匹配模式相应命令后不再继续其他模式。如果无一匹配模式，使用星号 * 捕获该值，再执行后面的命令。
#下面的脚本提示输入1到4，与每一种模式进行匹配： 
echo '输入 1 到 4 之间的数字:'
echo '你输入的数字为: '
read aNum
case $aNum in
	1) echo '你选择了1'
	;;
	
	2) echo '你选择了2'
	;;
	
	3) echo '你选择了3'
	;;
	
	4) echo '你选择了4'
	;;
	
	*) echo '你没有输入1到4之间的数字'
	;;
esac

	
#<5> 跳出循环
#在循环过程中，有时候需要在未达到循环结束条件时强制跳出循环，Shell使用两个命令来实现该功能：break和continue。
#break命令
#break命令允许跳出所有循环（终止执行后面的所有循环）。
#下面的例子中，脚本进入死循环直至用户输入数字大于5。要跳出这个循环，返回到shell提示符下，需要使用break命令。
while :
do
	echo -n "输入1到5之间的数字:"
	read aNum
	case $aNum in
		1|2|3|4|5) echo "你输入的数字为 $aNum!"
		;;
		
		*) echo "你输入的数字不是1到5之间的! game over!"
			break
		;;
	esac
done

echo "================================================="
