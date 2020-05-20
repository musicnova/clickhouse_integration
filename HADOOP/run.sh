#!/bin/sh
set -e -x

export SPARK_HOME=/c/Users/user/SPARK/spark-2.4.5-bin-hadoop2.7
export JAVA_HOME=/c/Program\ Files/Java/jdk1.8.0_201/jre
export HADOOP_HOME=/c/Users/user/IdeaProjects/draft/hadoop

PATH=$PATH:/c/Users/user/SPARK/spark-2.4.5-bin-hadoop2.7/bin bash -x  spark-shell

