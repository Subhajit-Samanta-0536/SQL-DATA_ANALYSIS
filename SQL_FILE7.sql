CREATE DATABASE RIYASEEDS;
USE RIYASEEDS;
CREATE TABLE CUS(

CUS_ID INT PRIMARY KEY AUTO_INCREMENT,
NAME VARCHAR(30),
CITY VARCHAR(39)
);
INSERT INTO CUS
(NAME,CITY)
 VALUES
("SUBHA","MUMBAI"),
("RUMA","KOLKATA"),
("AKASH","PATNA");


CREATE TABLE ORD(
OD_ID INT PRIMARY KEY,
CUS_ID INT,
AMOUNT INT
);

INSERT INTO ORD
(OD_ID,CUS_ID,AMOUNT)
VALUES
(101,1,500),
(102,1,900),
(103,2,932);

SELECT *FROM CUS;
SELECT * FROM ORD;



select *
FROM CUS C
INNER JOIN ORD O
ON C.CUS_ID=O.CUS_ID;

select *
FROM CUS C
RIGHT JOIN ORD O
ON C.CUS_ID=O.CUS_ID;


select *
FROM CUS C
LEFT JOIN ORD O
ON C.CUS_ID=O.CUS_ID;


select *
FROM CUS C
LEFT JOIN ORD O
ON C.CUS_ID=O.CUS_ID
UNION
select *
FROM CUS C
RIGHT JOIN ORD O
ON C.CUS_ID=O.CUS_ID;


select *
FROM CUS C
CROSS JOIN ORD O;

select *
FROM CUS AS A
JOIN CUS AS B
ON A.CUS_ID=B.CUS_ID;


select *
FROM CUS C
RIGHT JOIN ORD O
ON C.CUS_ID=O.CUS_ID
WHERE C.CUS_ID IS NULL;


SELECT * FROM ORD
WHERE AMOUNT>(
SELECT AVG(AMOUNT)
FROM ORD
);






SELECT NAME,(
SELECT COUNT(*)
FROM ORD O
WHERE O.CUS_ID=C.CUS_ID
)AS ORDER_COUNT
FROM CUS C;


SELECT
 CUS_ID,
AVG_AMOUNT
FROM
(SELECT 
CUS_ID,
AVG(AMOUNT) AS AVG_AMOUNT
FROM ORD
GROUP BY CUS_ID)
AS SUMMARY;



CREATE VIEW view1 AS
SELECT CUS_ID,NAME
FROM CUS;
SELECT *FROM view1;


CREATE TABLE accountss (
    account_id INT PRIMARY KEY,
    name VARCHAR(50),
    balance DECIMAL(10,2),
    branch VARCHAR(50)
);
create database accountss;
use accountss;



INSERT INTO accountss VALUES
(1, 'Adam', 500.00, 'Mumbai'),
(2, 'Bob', 300.00, 'Delhi'),
(3, 'Charlie', 700.00, 'Bangalore'),
(4, 'David', 1000.00, 'Noida');

SELECT * FROM accountss;

create index idx_branch on accountss(branch);
create index idx2 on accountss(branch,balance);

DELIMITER $$
create procedure check_bal(IN acc_id INT,out bal decimal(10,2))
BEGIN
SELECT balance into bal
FROM accountss
where account_id=acc_id;
END $$
DELIMITER ;
call check_bal(1,@balance);
select @balance;
drop index idx2 on accountss;

drop procedure if exists check_bal;
USE prime;