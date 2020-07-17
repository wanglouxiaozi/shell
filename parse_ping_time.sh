#! /bin/bash
#  ping www.baidu.com -I wwan0 | awk '{print $0"\t" strftime("%Y-%m-%d %H:%M:%S=%s",systime())}'

data1=$2

if [ -z $2 ]; then
	echo "default time value: 0"
	data1=0
fi

usage()
{
	echo "usage:"
	echo "    $0 filename value"
}

 [[ -z $1 ]] && usage && exit

while read lines
do
	line=`echo $lines | awk '{print $7}'`
	datavalue=`echo ${line#*=} | awk -F '.' '{print $1}'`
#	echo $datavalue

	if [ $datavalue -gt $data1 ]; then
		echo $lines
	fi
done < $1
