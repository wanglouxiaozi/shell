#!/usr/bin/env bash

#单引号
#单引号字符串的限制：
#	单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的；
#	单引号字串中不能出现单引号（对单引号使用转义符后也不行）。
str='this is a string'
echo ${str}
echo "================================================================="


#双引号
#双引号的优点：
#	双引号里可以有变量
#	双引号里可以出现变量
your_name="qinjx"
str="Hello, I know you are \"${your_name}\"!"
echo ${str}
echo "================================================================="


#拼接字符串
your_name="qinjx"
greeting="hello, "$your_name"!"
greeting_1="hello, ${your_name}!"
greeting_2="hello, $your_name!"
echo $greeting $greeting_1 $greeting_2
echo "================================================================="


#获取字符串长度
string="abcd"
echo ${#string} #输出4
echo "================================================================="


#提取子字符串
#从字符串第2个字符开始截取4个字符
string="runoob is a great site"
echo ${string:1:4} #输出 unoo
echo "================================================================="


#查找子字符串
#查找字符 "i或s"的位置
string="runoob is a great company"
echo `expr index "$string" is`  # 输出 8
echo `expr index "$string" s`  # 输出 9
#注意： 以上脚本中 "`" 是反引号，而不是单引号 "'"，不要看错了哦
echo "================================================================="

