create database cacti;
CREATE USER 'cacti'@'localhost' IDENTIFIED BY 'qwe123';
GRANT ALL ON cacti.* TO cacti@localhost;
FLUSH privileges;
