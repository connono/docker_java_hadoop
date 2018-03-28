export JAVA_HOME=/usr/java/jdk1.8.0_162 
export JRE_HOME=/usr/java/jdk1.8.0_162/jre
export CLASSPATH=.:$JAVA_HOME/lib$:JRE_HOME/lib:$CLASSPATH
export PATH=$JAVA_HOME/bin:$JRE_HOME/bin/$JAVA_HOME:$PATH

export HADOOP_HOME=/home/ahadoop/hadoop-2.8.3
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin

export ZOOKEEPER_HOME=/home/ahadoop/zookeeper-3.4.10
export PATH=$PATH:$ZOOKEEPER_HOME/bin
