# tomcat-cluster

https://westzq1.github.io/docker/2019/06/13/tomcat-cluster-in-docker.htmg

# Moved to new Org

docker cp 39f79a7c1606:/usr/local/tomcat/conf/web.xml web.xml

docker cp 39f79a7c1606:/usr/local/tomcat/webapps/ROOT/WEB-INF/web.xml rootweb.xml

docker cp 39f79a7c1606:/usr/local/tomcat/conf/server.xml server.xml

docker cp 39f79a7c1606:/usr/local/tomcat/conf/context.xml context.xml

# docker build -t myapp:v2 .

# docker run --name myapp1 -it --rm -p 8888:8080 myapp:v2 &

# docker run --name myapp2 -it --rm -p 8889:8080 myapp:v2 &
