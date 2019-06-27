yum install -y java-1.8.0
cd /usr/local
wget http://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz
tar -xvf apache-tomcat-9.0.21.tar.gz
rm -f apache-tomcat-9.0.21.tar.gz
mv apache-tomcat-9.0.21 tomcat9
echo "export CATALINA_HOME="/usr/local/tomcat9"" >> ~/.bashrc
source ~/.bashrc
cd /usr/local/tomcat9/bin
./startup.sh
