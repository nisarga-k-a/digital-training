SHOW databases;
create database testdb;
use testdb;
CREATE TABLE Student
(
  sid INT NOT NULL,
  name INT NOT NULL,
  Address INT NOT NULL,
  phone INT NOT NULL,
  email INT NOT NULL,
  PRIMARY KEY (sid)
);

CREATE TABLE Course
(
  cid INT NOT NULL,
  name INT NOT NULL,
  price INT NOT NULL,
  description INT NOT NULL,
  PRIMARY KEY (cid)
);

CREATE TABLE Enrollment
(
  Amount INT NOT NULL,
  date INT NOT NULL,
  eid INT NOT NULL,
  sid INT NOT NULL,
  cid INT NOT NULL,
  PRIMARY KEY (eid),
  FOREIGN KEY (sid) REFERENCES Student(sid),
  FOREIGN KEY (cid) REFERENCES Course(cid)
);
