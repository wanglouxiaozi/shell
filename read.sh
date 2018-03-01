#!/bin/bash

read firstStr secondStr
echo "第一个参数:$firstStr; 第二个参数:$secondStr"

read -p "请输入一段文字:" -n 6 -t 10 -s passwd
echo -e "\npasswd is $passwd"


#参数说明：
#	-p 输入提示文字
#	-n 输入字符长度限制(达到6位，自动结束)
#	-t 输入限时
#	-s 隐藏输入内容

