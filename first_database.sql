CREATE TABLE Subject (
    ID INT PRIMARY KEY,
    Name VARCHAR(50)
    );

CREATE TABLE Student (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Surname VARCHAR(50)
    );

CREATE TABLE Exercise (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Subject_ID INT NOT NULL,
    FOREIGN KEY (Subject_ID) REFERENCES Subject(ID)
    );

CREATE TABLE Solved_exercise(
    Student_ID INT NOT NULL,
    Exercise_ID INT NOT NULL,
    Classification INT NOT NULL,
    PRIMARY KEY(Student_ID, Exercise_ID),
    FOREIGN KEY (Student_ID) REFERENCES Student(ID),
    FOREIGN KEY (Exercise_ID) REFERENCES Exercise(ID)
    );


INSERT INTO Student (ID, Name, Surname)
VALUES (0, 'Daniel', 'Krzykawski');

INSERT INTO Student (ID, Name, Surname)
VALUES (1, 'Adam', 'Kowalski');

INSERT INTO Student (ID, Name, Surname)
VALUES (2, 'Piotr', 'Masny');

INSERT INTO Subject (ID, Name)
VALUES (0, 'Databases');

INSERT INTO Subject (ID, Name)
VALUES (1, 'Maths');

INSERT INTO Subject (ID, Name)
VALUES (2, 'English');

INSERT INTO Exercise (ID, Name, Subject_ID)
VALUES (0, 'First database', 0);

INSERT INTO Exercise (ID, Name, Subject_ID)
VALUES (1, 'Algebra homework', 1);

INSERT INTO Exercise (ID, Name, Subject_ID)
VALUES (2, 'Second database', 0);

INSERT INTO Exercise (ID, Name, Subject_ID)
VALUES (3, 'Analysis homework', 1);

INSERT INTO Solved_exercise (Student_ID, Exercise_ID, Classification)
VALUES (0, 0, 20);

INSERT INTO Solved_exercise (Student_ID, Exercise_ID, Classification)
VALUES (1, 0, 10);

INSERT INTO Solved_exercise (Student_ID, Exercise_ID, Classification)
VALUES (2, 0, 6);

INSERT INTO Solved_exercise (Student_ID, Exercise_ID, Classification)
VALUES (0, 1, 18);

INSERT INTO Solved_exercise (Student_ID, Exercise_ID, Classification)
VALUES (1, 1, 12);

INSERT INTO Solved_exercise (Student_ID, Exercise_ID, Classification)
VALUES (2, 1, 20);

INSERT INTO Solved_exercise (Student_ID, Exercise_ID, Classification)
VALUES (0, 2, 16);

INSERT INTO Solved_exercise (Student_ID, Exercise_ID, Classification)
VALUES (1, 2, 1);

INSERT INTO Solved_exercise (Student_ID, Exercise_ID, Classification)
VALUES (2, 2, 11);

INSERT INTO Solved_exercise (Student_ID, Exercise_ID, Classification)
VALUES (0, 3, 17);

INSERT INTO Solved_exercise (Student_ID, Exercise_ID, Classification)
VALUES (1, 3, 6);

INSERT INTO Solved_exercise (Student_ID, Exercise_ID, Classification)
VALUES (2, 3, 8);


SELECT * FROM Solved_exercise INNER JOIN Student ON Solved_exercise.Student_Id = Student.ID

SELECT Student.Name, Solved_exercise.Exercise_ID, Solved_exercise.Classification
FROM Solved_exercise INNER JOIN Student ON Solved_exercise.Student_Id = Student.ID
WHERE Student.Name = 'Daniel'