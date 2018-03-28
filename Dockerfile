FROM centos:6
MAINTAINER connono "1063496384@qq.com"
ENV REFRESHED_AT 2018-3-28

RUN curl http://mirrors.aliyun.com/repo/Centos-6.repo > /etc/yum.repos.d/CentOS-Base-6-aliyun.repo && mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak && yum clean all && yum makecache
RUN yum install -y nettools which openssh-clients openssh-server iproute.x86_64

RUN mv /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
ADD sshd_config /etc/ssh/sshd_config
RUN chkconfig sshd on && service sshd start
RUN groupadd ahadoop && useradd -m -g ahadoop ahadoop

ADD jdk-1.8.tar.gz /usr/java
RUN su ahadoop

ADD hadoop-2.8.3.tar.gz /home/ahadoop
ADD hadoop-data /home/ahadoop/hadoop-data
RUN exit

ADD zookeeper-3.4.10.tar.gz /home/ahadoop
ADD zoo.cfg /home/ahadoop/zookeeper-3.4.10/conf/

ADD .bash_profile /home/ahadoop
RUN source /home/ahadoop/.bash_profile
