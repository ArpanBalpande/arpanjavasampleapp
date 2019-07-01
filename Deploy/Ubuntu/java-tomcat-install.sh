# Prerequisites : Script must be run as root user, 8080 port should be allowed in VM's SG.
# Installing JAVA
apt update
apt install -y default-jdk

# Installing Tomcat
wget http://apachemirror.wuchna.com/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz
tar xzf apache-tomcat-9.0.21.tar.gz
rm -f apache-tomcat-9.0.21.tar.gz
mv apache-tomcat-9.0.21 /usr/local/apache-tomcat9

# Setting Environment Variables
echo "export CATALINA_HOME="/usr/local/apache-tomcat9"" >> ~/.bashrc
echo "export JAVA_HOME="/usr/lib/jvm/java-11-oracle"" >> ~/.bashrc
echo "export JRE_HOME="/usr/lib/jvm/java-11-oracle"" >> ~/.bashrc
source ~/.bashrc

# Starting Tomcat
cd /usr/local/apache-tomcat9
chmod +x ./bin/startup.sh
./bin/startup.sh
