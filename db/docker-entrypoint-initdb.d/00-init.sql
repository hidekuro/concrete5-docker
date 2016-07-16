CREATE USER 'c5agent'@'%' IDENTIFIED BY 'Concrete#5';
CREATE DATABASE concrete5 DEFAULT CHARACTER SET utf8mb4;
GRANT ALL ON concrete5.* TO 'c5agent'@'%';
