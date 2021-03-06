#!/bin/bash

#命令:/home/peanut/Desktop/test.sh 4 hdfs://192.168.1.103:9000/user/peanut /home/peanut/Documents/rules/

jarFile=/home/hadoop/ParallelDecisionSystem/bin/C45MapReduce.jar
Hadoop_HOME=/usr/local/hadoop

data=$2/input/data/data_
out=$2/output/output
att=$2/input/att/att_
tmp=$2/input/tmp/tmp
rule=$3
count=$1

#echo -e "\n<-----决策森林开始执行！----->\n"

line=0
while [ $line -lt $count ]
do
	Ndata=$data$line.txt
	Nout=$out$line
	Natt=$att$line.txt
	Ntmp=$tmp$line
	Nrule=$rule$line.txt	
	#echo -e "数据:$Ndata\n输出:$Nout\n属性:$Natt\n缓存:$Ntmp\n规则:$Nrule\n"
	#执行hadoop命令
	${Hadoop_HOME}/bin/hdfs dfsadmin -safemode leave
	${Hadoop_HOME}/bin/hadoop jar $jarFile $Ndata $Nout $Natt $Ntmp $Nrule 1>>/home/hadoop/ParallelDecisionSystem/logs/log.info 2>>/home/hadoop/ParallelDecisionSystem/logs/log.error
	let line=${line}+1
done
