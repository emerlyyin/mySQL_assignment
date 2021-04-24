/*build the database*/
SHOW databases;
DROP DATABASE IF EXISTS eyin2assign2db;
CREATE DATABASE eyin2assign2db;
USE eyin2assign2db;

/*granting access for TABLE*/
GRANT USAGE ON *.* TO 'ta'@'localhost';
DROP USER 'ta'@'localhost';
CREATE USER 'ta'@'localhost' IDENTIFIED BY 'cs3319';
GRANT ALL PRIVILEGES ON eyin2assign2db.* TO 'ta'@'localhost';
FLUSH PRIVILEGES;

/*Building tables*/
SHOW tables;
CREATE TABLE universities (uniquenum TINYINT NOT NULL, officialname VARCHAR(50) NOT NULL, city VARCHAR(20) NOT NULL, provincecode CHAR(2) NOT NULL, nickname VARCHAR(20) NOT NULL, PRIMARY KEY(uniquenum));
CREATE TABLE westerncs (coursenum CHAR(6) NOT NULL, coursename VARCHAR(50) NOT NULL, weight FLOAT NOT NULL, suffix VARCHAR(3), PRIMARY KEY(coursenum));
CREATE TABLE otherunics (coursecode CHAR(10) NOT NULL, coursename VARCHAR(50) NOT NULL, weight FLOAT NOT NULL, yearstudents TINYINT NOT NULL, unicode TINYINT NOT NULL,FOREIGN KEY (unicode) REFERENCES universities(uniquenum) ON DELETE CASCADE);
CREATE TABLE equivalent(UWOcoursenum CHAR(6) NOT NULL, OTHERcoursecode CHAR(10) NOT NULL, otherUniNick VARCHAR(20),otherunicode TINYINT NOT NULL, datedecided DATE NOT NULL, FOREIGN KEY(UWOcoursenum) REFERENCES westerncs(coursenum) ON DELETE CASCADE);

SHOW tables;
