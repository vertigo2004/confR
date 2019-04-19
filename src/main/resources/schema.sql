set foreign_key_checks = 0;

drop table if exists user;
create table user
(
  email varchar(50) not null primary key,
  nickname varchar(255) null
) engine=InnoDB DEFAULT CHARACTER SET=utf8;

drop table if exists conference;
create table conference
(
  id int(11) not null primary key AUTO_INCREMENT,
  name varchar(255) not null,
  info TEXT null
) engine=InnoDB DEFAULT CHARACTER SET=utf8;

drop table if exists topic;
create table topic
(
  id int(11) not null primary key AUTO_INCREMENT,
  date_time datetime not null,
  name varchar(255) not null,
  rate int not null default 0,
  speaker varchar(255) not null,
  summary TEXT not null,
  conference_id int(11) not null,
  FOREIGN KEY (conference_id) REFERENCES conference (id)
) engine=InnoDB DEFAULT CHARACTER SET=utf8;

drop table if exists question;
create table question
(
  id int(11) not null primary key AUTO_INCREMENT,
  body varchar(255) null,
  rate int not null DEFAULT 1,
  author_email varchar(50) not null,
  topic_id int(11) not null,
  FOREIGN KEY (topic_id) REFERENCES topic (id)
) engine=InnoDB DEFAULT CHARACTER SET=utf8;

drop table if exists question_likes;
create table question_likes
(
  question_id int(11) not null,
  likes_email varchar(50) not null,
  primary key AUTO_INCREMENT (question_id, likes_email),
  FOREIGN KEY (question_id) REFERENCES question (id),
  FOREIGN KEY (likes_email) REFERENCES user (email)
) engine=InnoDB DEFAULT CHARACTER SET=utf8;

set foreign_key_checks = 1;