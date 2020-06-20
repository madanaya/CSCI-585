-- MySQL 5.6

CREATE TABLE family
(
    Name char(30),
    Address char(30),
    ID integer,
    samefam integer
);

INSERT INTO family VALUES('Alice', 'A', 10, NULL);
INSERT INTO family VALUES('Bob', 'B', 15, NULL);
INSERT INTO family VALUES('Carmen', 'C',22 , NULL);
INSERT INTO family VALUES('Diego','A', 9, 10);
INSERT INTO family VALUES('Ella' ,'B', 3, 15);
INSERT INTO family VALUES('Farkhad','D',11 ,NULL);

DELETE FROM family
WHERE ID IN(
SELECT ID FROM family f1 
WHERE sameFam is NULL
and EXISTS (SELECT 1 FROM family f2
            WHERE f2.sameFam=f1.ID));