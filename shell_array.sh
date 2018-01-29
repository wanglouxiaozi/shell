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
