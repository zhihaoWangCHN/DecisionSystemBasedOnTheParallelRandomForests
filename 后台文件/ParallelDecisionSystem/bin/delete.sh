#!/bin/bash

Hadoop_HOME=/usr/local/hadoop

${Hadoop_HOME}/bin/hdfs dfsadmin -safemode leave

${Hadoop_HOME}/bin/hdfs dfs -rm -r /user/hadoop/input/att/*
${Hadoop_HOME}/bin/hdfs dfs -rm -r /user/hadoop/input/data/*
${Hadoop_HOME}/bin/hdfs dfs -rm -r /user/hadoop/input/tmp
${Hadoop_HOME}/bin/hdfs dfs -rm -r /user/hadoop/tmp
${Hadoop_HOME}/bin/hdfs dfs -rm -r /user/hadoop/output

echo "delete all files OK!"
