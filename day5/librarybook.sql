SHOW databases;
create database library;
use library;
CREATE TABLE Book
(
  BookID INT NOT NULL,
  title INT NOT NULL,
  Author INT NOT NULL,
  PRIMARY KEY (BookID)
);

CREATE TABLE Member
(
  MemberID INT NOT NULL,
  Name INT NOT NULL,
  Email INT NOT NULL,
  PRIMARY KEY (MemberID)
);

CREATE TABLE Loan
(
  LoanID INT NOT NULL,
  Loandate INT NOT NULL,
  Returndate INT NOT NULL,
  BookID INT NOT NULL,
  MemberID INT NOT NULL,
  PRIMARY KEY (LoanID),
  FOREIGN KEY (BookID) REFERENCES Book(BookID),
  FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);