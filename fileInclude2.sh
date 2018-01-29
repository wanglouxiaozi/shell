#!/bin/bash

#使用 . 号来引用fileInclude1.sh 文件
#. fileInclude1.sh
#. ./fileInclude1.sh # . 与 ./fileInclude1.sh 之间必须要有空格

#或者使用以下包含文件代码
source ./fileInclude1.sh  #./表示当前目录，可以不写

echo "菜鸟教程官方网址: $url"
