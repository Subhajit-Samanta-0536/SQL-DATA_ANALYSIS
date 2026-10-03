

USE instragram;

INSERT INTO user
(id, age, name, email, follower, following)
VALUES
(1, 14, 'adam', 'adam@gmail.com', 123, 145),
(2, 16, 'sovan', 'sovan@gmail.com', 127, 140),
(3, 44, 'ankush', 'ankush@gmail.com', 123, 155),
(4, 74, 'ankan', 'ankan@gmail.com', 153, 185);

SELECT MAX(follower)
FROM user;

SELECT age,count(id)
FROM user
GROUP BY age;

SELECT age,MAX(follower)
FROM user
GROUP BY age;

SELECT name,MAX(follower)
FROM user
GROUP BY name
having MAX(follower)>127;


UPDATE user
SET follower=600
where age=74;

SET SQL_SAFE_UPDATES=0;
SELECT* FROM user;


delete from user

where age=74;



ALTER TABLE user
ADD COLUMN CITY VARCHAR(30) DEFAULT "KOLKATA";


ALTER TABLE user
DROP COLUMN follower;

ALTER TABLE user
RENAME TO FACEBOOK;
SELECT* FROM NEW_USER;

ALTER TABLE NEW_USER
RENAME TO user;
SELECT * FROM NEWUSER;

ALTER TABLE NEWUSER
CHANGE COLUMN CITY PLACE VARCHAR(70) DEFAULT "KOL";

INSERT INTO NEWUSER
(id, age, name, email, following)
VALUES
(77, 154, 'PRITAM', 'PRITAM@gmail.com',  1499),
(44,740, 'RUPAM', 'RUPAM@gmail.com',  18095);

ALTER TABLE NEWUSER
MODIFY PLACE VARCHAR(30) DEFAULT "AKLAPOUSH";


TRUNCATE TABLE NEWUSER;
