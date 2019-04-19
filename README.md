# confR
KDU-Rainbow Conference Assistant project

## Install Database Server
Install MySQL server locally. Configure 'root' user

## Create Database
Run from command line
```
mysql -uroot -p
```
Run command in MySQL console
```
create database cassistant character set UTF8 collate utf8_general_ci;
```

## Create User
Create new DB user 'conference' with password 'assistant'.
Grant him/her an access to 'cassistant' DB.
Run command in MySQL console
``` 
CREATE USER 'conference'@'localhost' IDENTIFIED BY 'assistant';
GRANT ALL ON cassistant.* TO 'conference'@'localhost';
FLUSH PRIVILEGES;
```
Exit MySQL console with `exit` command.

## Create DB Schema
Run from command line 
```
mysql -uconference -passistant --default-character-set=utf8 cassistant < schema.sql
```

## Upload DB Initials
Run from command line
```
mysql -uconference -passistant --default-character-set=utf8 cassistant < data.sql
```