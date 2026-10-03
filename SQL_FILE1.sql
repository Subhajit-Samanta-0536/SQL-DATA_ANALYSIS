CREATE DATABASE mycollege;
USE mycollege;
CREATE TABLE student(
 rollno INT,
 name VARCHAR(30),
 age INT

);

INSERT INTO student
VALUES
(1,"ANKUSH",21),
(2,"SUBHAJIT",19);



CREATE DATABASE IF NOT EXISTS instragram;
use instragram;
create table user(
id int,
age int,
name varchar(30) not null,
email varchar(40) unique,
follower int,
following int,

constraint age_check check(age>=13)

);
USE instagram;

CREATE TABLE user (
    id INT PRIMARY KEY,
    age INT,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(40) UNIQUE,
    follower INT,
    following INT,
    CONSTRAINT age_check CHECK(age >= 13)
);

INSERT INTO user
(id, age, name, email, followers, following)
VALUES
(1, 14, 'adam', 'adam@gmail.com', 123, 145),
(2, 16, 'sovan', 'sovan@gmail.com', 127, 140),
(3, 44, 'ankush', 'ankush@gmail.com', 123, 155),
(4, 74, 'ankan', 'ankan@gmail.com', 153, 185);

SELECT max(followers)
FROM user;



select name,age,followers
FROM user
ORDER BY followers ASC;


use instragram;
create table POSTS(
id int,

CONTENT varchar(30) not null,

USER_ID int


)
INSERT INTO POSTS
(id, CONTENT,USER_ID)
VALUES
(101,"HELLO WORLD",3),
(102,"BYE BYE",1),
(103,"HELLO WORLD",3);
SELECT * FROM POSTS;