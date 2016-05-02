# 使用tomcat7 镜像
FROM daocloud.io/daocloud/dao-tomcat:v7.0.55

# 打印tomcat目录
RUN echo $CATALINA_HOME
RUN echo $JAVA_HOME

# 从github下载war包
# 拷贝war包到tomcat的目录下
COPY *.war $CATALINA_HOME/webapps/

RUN ls $CATALINA_HOME/webapps/