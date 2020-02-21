# cat pre.sh 
sed -i "s/#HOSTNAME#/`hostname`/g" /usr/local/tomcat/webapps/ROOT/index.jsp
sed -i "s/#HOSTNAME#/localhost/g" /usr/local/tomcat/conf/server.xml
sed -i "s/#IPADDRESS#/`ifconfig eth0|grep "inet addr"|awk '{print $2}'|sed 's/addr://g'`/g" /usr/local/tomcat/conf/server.xml