#!/bin/bash

Hadoop_HOME=/usr/local/hadoop
attFile=/home/hadoop/ParallelDecisionSystem/splits/att/*
dataFile=/home/hadoop/ParallelDecisionSystem/splits/data/*
att_hadoop=hdfs://192.168.1.105:9000/user/hadoop/input/att/
data_hadoop=hdfs://192.168.1.105:9000/user/hadoop/input/data/

${Hadoop_HOME}/bin/hdfs dfsadmin -safemode leave

${Hadoop_HOME}/bin/hdfs dfs -copyFromLocal $attFile $att_hadoop
${Hadoop_HOME}/bin/hdfs dfs -copyFromLocal $dataFile $data_hadoop

#echo "upload all files OK!"
