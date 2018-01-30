#!/bin/bash
#author: allen
#mail: allenwang@tvunetworks.com

printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg
printf "%-10s %-8s %-4.2f\n" 郭靖 男 66.1234
printf "%-10s %-8s %-4.2f\n" 杨过 男 53.6132 
printf "%-10s %-8s %-4.2f\n" 神雕 男 65.8201 


# format-string 为双引号
printf "%d %s\n" 1 "abc"

# 单引号与双引号效果一样
printf '%d %s\n' 1 "abc"
printf '%d %s\n' 1 abc

#没有引号也可以输出
printf %s abcdef
echo

#格式只指定了一个参数，但多出的参数仍然会按照该格式输出，format-string 被重用
printf %s abc def
printf "\n"
printf "%s\n" abc def
printf "%s %s %s\n" a b c d e f g h i j

#如果没有arguments,那么 %s 用NULL代替，%d用0代替
printf "%s and %d\n"


printf "a string, no processing:<%s>" "A\nB"
printf "\n"
printf "a string, no processing:<%b>" "A\nB"
printf "\n"
printf "www.runoob.com \a"
printf "\n"

printf "%d %s %c\n" 1 "abc" "def"
