CREATE DATABASE wordpress;
CREATE USER 'bben-aou'@'%' IDENTIFIED BY '123123';
GRANT ALL PRIVILEGES ON wordpress.* TO 'bben-aou'@'%';
FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY 'root123123';