CREATE DATABASE Web;

CREATE TABLE ScoreTable (
    StudentID int NOT NULL, 
    Course varchar(50) NOT NULL,
    Score int,
    CONSTRAINT pk_Score PRIMARY KEY (StudentID,Course),
    FOREIGN KEY (StudentID) REFERENCES StudentInfo(StudentID)
                        
);

CREATE TABLE StudentInfo (
    StudentID int NOT NULL, 
    Name varchar(50) NOT NULL,
    PRIMARY KEY (StudentID)
);

SELECT StudentInfo.StudentID, StudentInfo.Name, ScoreTable.Course, ScoreTable.Score
FROM StudentInfo JOIN ScoreTable
WHERE StudentInfo.StudentID = ScoreTable.StudentID AND ScoreTable.Score > 80;


INSERT INTO StudentInfo VALUES(2019001,'LiMing');
INSERT INTO StudentInfo VALUES(2019002,'MinMing');
INSERT INTO StudentInfo VALUES(2019003,'MaxMing');
INSERT INTO StudentInfo VALUES(2019004,'MidMing');
INSERT INTO StudentInfo VALUES(2019005,'Danny');
INSERT INTO StudentInfo VALUES(2019006,'MinDanny');
INSERT INTO StudentInfo VALUES(2019007,'MaxDanny');
INSERT INTO StudentInfo VALUES(2019008,'MidDanny');
INSERT INTO StudentInfo VALUES(2019009,'MySQL');
INSERT INTO StudentInfo VALUES(2019010,'Redis');

INSERT INTO ScoreTable VALUES(2019001, 'Math', 10);
INSERT INTO ScoreTable VALUES(2019001, 'English', 90);
INSERT INTO ScoreTable VALUES(2019001, 'Chinese', 79);

INSERT INTO ScoreTable VALUES(2019002, 'Math', 89);
INSERT INTO ScoreTable VALUES(2019002, 'English', 20);
INSERT INTO ScoreTable VALUES(2019002, 'Chinese', 84);

INSERT INTO ScoreTable VALUES(2019003, 'Math', 91);
INSERT INTO ScoreTable VALUES(2019003, 'English', 43);
INSERT INTO ScoreTable VALUES(2019003, 'Chinese', 76);

INSERT INTO ScoreTable VALUES(2019004, 'Math', 81);
INSERT INTO ScoreTable VALUES(2019004, 'English', 79);
INSERT INTO ScoreTable VALUES(2019004, 'Chinese', 86);

INSERT INTO ScoreTable VALUES(2019005, 'Math', 54);
INSERT INTO ScoreTable VALUES(2019005, 'English', 94);
INSERT INTO ScoreTable VALUES(2019005, 'Chinese', 60);

INSERT INTO ScoreTable VALUES(2019006, 'Math', 84);
INSERT INTO ScoreTable VALUES(2019006, 'English', 83);
INSERT INTO ScoreTable VALUES(2019006, 'Chinese', 68);

INSERT INTO ScoreTable VALUES(2019007, 'Math', 96);
INSERT INTO ScoreTable VALUES(2019007, 'English', 75);
INSERT INTO ScoreTable VALUES(2019007, 'Chinese', 87);

INSERT INTO ScoreTable VALUES(2019008, 'Math', 45);
INSERT INTO ScoreTable VALUES(2019008, 'English', 95);
INSERT INTO ScoreTable VALUES(2019008, 'Chinese', 76);

INSERT INTO ScoreTable VALUES(2019009, 'Math', 67);
INSERT INTO ScoreTable VALUES(2019009, 'English', 79);
INSERT INTO ScoreTable VALUES(2019009, 'Chinese', 98);

INSERT INTO ScoreTable VALUES(2019010, 'Math', 100);
INSERT INTO ScoreTable VALUES(2019010, 'English', 34);
INSERT INTO ScoreTable VALUES(2019010, 'Chinese', 78);
