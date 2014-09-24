CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first TEXT NOT NULL,
  last TEXT NOT NULL,
  dob DATE,
  gpa DECIMAL
);

CREATE TABLE courses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL
);

INSERT INTO students (first, last, dob, gpa) VALUES ('bill', 'jones', '1/1/1990', 3.3);
INSERT INTO students (first, last, dob, gpa) VALUES ('janet', 'jones', '2/1/1990', 3.7);
INSERT INTO students (first, last, dob, gpa) VALUES ('jill', 'smith', '2/1/1980', 3.5);
INSERT INTO students (first, last, dob, gpa) VALUES ('tim', 'smith', '2/1/1990', 3.6);
INSERT INTO students (first, last, dob, gpa) VALUES ('january', 'jones', '2/1/1990', 3.7);
INSERT INTO students (first, last, dob, gpa) VALUES ('jim', 'jones', '2/1/1980', 3.5);


INSERT INTO courses (id,name) VALUES (1,'WDI Web Development');
INSERT INTO courses (id,name) VALUES (2,'WDI Front End');
