#!/bin/bash
#此脚本用来 DIY ROM 用
#制作者：陈云
#写于2014年3月 窝窝

PATH=/bin:/sbin:/usr/bin:usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

filepath=`pwd`
project=$1
echo $filepath
adb sideload ${filepath}/${project}
while [ $? = 1 ]; do
	adb sideload ${filepath}/${project}
	#statements
done