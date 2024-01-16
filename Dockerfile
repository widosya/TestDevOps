FROM centos:7
RUN yum -y update && yum -y install gcc && yum -y install make & yum -y install cmake
WORKDIR /sqlite3
COPY sqlite3.c .
COPY sqlite3.h .
COPY CMakeLists.txt .
CMD cmake CMakeLists.txt && make
