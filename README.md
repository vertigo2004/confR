# confR
KDU-Rainbow Conference Assistant project

## Install Database Server
Install MySQL server locally. Configure 'root' user

### Create Database
Run from command line
```
mysql -uroot -p
```
Run command in MySQL console
```
create database cassistant character set UTF8 collate utf8_general_ci;
```

### Create User
Create new DB user 'conference' with password 'assistant'.
Grant him/her an access to 'cassistant' DB.
Run command in MySQL console
``` 
CREATE USER 'conference'@'localhost' IDENTIFIED BY 'assistant';
GRANT ALL ON cassistant.* TO 'conference'@'localhost';
FLUSH PRIVILEGES;
```
Exit MySQL console with `exit` command.

### Create DB Schema
Run from command line 
```
mysql -uconference -passistant --default-character-set=utf8 cassistant < schema.sql
```

### Upload DB Initials
Run from command line
```
mysql -uconference -passistant --default-character-set=utf8 cassistant < data.sql
```

## REST API
Наразі доступні такі енд-пойнти

### User endpoints
| Method | URL | Body param | Response object | Description |
|--------|-----|------------|-----------------|-------------|
| GET | /user/all | - | List of Users | Get a list of all users |
| GET | /user/{email} | - | User | Get a user by its e-mail |
| GET | /user/{email}/exists | - | boolean | True if user with given email exists. False otherwise |
| POST| /user | User | User | Create new user record. User must have an email and can have a nickname. If no nickname specified then it would be created from it's email. If user with given email already exists then error 500 is returned with message "User with email: <email> exists already". |

User object JSON structure example:
```
{
   "email": "alice@iful.edu.ua",
   "nickname": "Alice"
}
```
### Question endpoints
| Method | URL | Body param | Response object | Description |
|--------|-----|------------|-----------------|-------------|
| GET | /question/all | - | List of Questions | Get a list of all questions |
| GET | /question/{questionId} | - | Question | Get a question by its ID |
| GET | /question/{topicId}/liked/{email} | - | List of Questions| Get a list of all questions by the topic ID with 'liked' mark. |
| PUT | /question/{questionId}/like | String email | Question | Thumbs up for question |
| POST | /question/ | Question | Question | Create new question and link it to a topic |

Question object JSON structure example:
```
{
   "id": 1,
   "author": {
     "email": "alice@iful.edu.ua",
     "nickname": "Alice"
   },
   "body": "Why is it faster to process a sorted array than an unsorted array?",
   "rate": 3,
   "topicId": 1,
   "liked": false
}
```
 