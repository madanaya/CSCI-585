CREATE TABLE Instructors
(
    instructor varchar(30),
    subject varchar(30)
);

INSERT INTO Instructors VALUES ('Aleph','Scratch') 
INSERT INTO Instructors VALUES ('Aleph','Java')
INSERT INTO Instructors VALUES ('Aleph','Processing')
INSERT INTO Instructors VALUES ('Bit','Java')
INSERT INTO Instructors VALUES ('Bit','JavaScript')
INSERT INTO Instructors VALUES ('Bit','Python')
INSERT INTO Instructors VALUES ('CRC','JavaScript')
INSERT INTO Instructors VALUES ('CRC','Python')
INSERT INTO Instructors VALUES ('Dat','JavaScript')
INSERT INTO Instructors VALUES ('Dat','Python')
INSERT INTO Instructors VALUES ('Dat','Scratch')
INSERT INTO Instructors VALUES ('Emscr','Scratch')
INSERT INTO Instructors VALUES ('Emscr','Processing')
INSERT INTO Instructors VALUES ('Emscr','JavaScript')
INSERT INTO Instructors VALUES ('Emscr','Python')

CREATE TABLE Subjects
(
    subject varchar(30)
)

INSERT INTO Subjects VALUES ('JavaScript');
INSERT INTO Subjects VALUES ('Scratch');
INSERT INTO Subjects VALUES ('Python');

/*
    There are multiple entries of one Instructor so using DISTNCT
    EXISTS is used to check if Instructor teaches every subject in the Subjects Table
    JOIN together with count is used to check How many Subjects is an Instructor teaching from Subjects table
    Finally, only those having count = total number of subjects, they are considered
*/
SELECT DISTINCT(instructor) FROM Instructors I1
WHERE EXISTS
(
    SELECT COUNT(instructor) FROM Instructors I2
    INNER JOIN Subjects S ON
    S.subject = I2.subject
    WHERE I2.instructor = I1.instructor
    having COUNT(*) = (SELECT COUNT(*) FROM Subjects)
);