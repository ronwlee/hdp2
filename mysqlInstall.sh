yum localinstall https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm

yum -y install mysql-community-server

systemctl start mysqld
systemctl enable mysqld

grep 'temporary' /var/log/mysqld.log

mysql -u root -p

ALTER USER 'root'@'localhost' IDENTIFIED BY 'Hadoop1234!';
flush privileges;

yum install mysql-connector-java.noarch

[root@ambari1 vagrant]# rpm -ql mysql-connector-java.noarch
/usr/share/doc/mysql-connector-java-5.1.25
/usr/share/doc/mysql-connector-java-5.1.25/CHANGES
/usr/share/doc/mysql-connector-java-5.1.25/COPYING
/usr/share/doc/mysql-connector-java-5.1.25/docs
/usr/share/doc/mysql-connector-java-5.1.25/docs/README.txt
/usr/share/doc/mysql-connector-java-5.1.25/docs/connector-j.html
/usr/share/doc/mysql-connector-java-5.1.25/docs/connector-j.pdf
/usr/share/java/mysql-connector-java.jar
/usr/share/maven-fragments/mysql-connector-java
/usr/share/maven-poms/JPP-mysql-connector-java.pom

ambari-server setup --jdbc-db=mysql --jdbc-driver=/usr/share/java/mysql-connector-java.jar
