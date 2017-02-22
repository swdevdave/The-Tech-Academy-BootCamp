/*

-- Created By Dave King 2/22/2017 For Coursework at the Tech Academny --


SQL Drill
Create a database schema for a library management system as described in the following
picture:


You may choose the data types for each field in each table.
Now populate the tables of the database with dummy data. You may enter in whatever data
you like, but must ensure that the following is true:
1. There is a book called 'The Lost Tribe'.
2. There is a library branch called 'Sharpstown' and one called 'Central'.
3. There are at least 20 books in the BOOK table.
4. There are at least 10 authors in the BOOK_AUTHORS table.
5. Each library branch has at least 10 book titles, and at least two copies of each of those titles.
6. There are at least 8 borrowers in the BORROWER table, and at least 2 of those borrowers have more
than 5 books loaned to them.
7. There are at least 4 branches in the LIBRARY_BRANCH table.
8. There are at least 50 loans in the BOOK_LOANS table.
9. There must be at least one book written by 'Stephen King'.
You must make a SQL script that will populate the tables.
Now, create SQL queries that will answer the following questions:

1. How many copies of the book titled The Lost Tribe are owned by the library branch whose name
is"Sharpstown"?
2. How many copies of the book titled The Lost Tribe are owned by each library branch?
3. Retrieve the names of all borrowers who do not have any books checked out.
4. For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today,
retrieve the book title, the borrower's name, and the borrower's address.
5. For each library branch, retrieve the branch name and the total number of books loaned out from
that branch.
6. Retrieve the names, addresses, and number of books checked out for all borrowers who have more
than five books checked out.
7. For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of
copies owned by the library branch whose name is "Central"
Now, create a stored procedure that will execute one or more of those queries, based on user
choice.
*/


USE MASTER
GO

IF EXISTS (SELECT * FROM sys.databases WHERE [name] = 'LIBRARY')
DROP DATABASE LIBRARY
GO

CREATE DATABASE LIBRARY
GO

USE LIBRARY
GO

CREATE TABLE LIBRARY_BRANCH
(
Branchid VARCHAR (30), BranchName VARCHAR (30), [Address] VARCHAR (30),
);
GO

INSERT INTO LIBRARY_BRANCH
VALUES
	 ('001','Sharpstown','122 Anywhere St'),
	 ('002','Central','124 Anywhere St'),
	 ('003','Downtown','126 S Anywhere St'),
	 ('004','Midtown','128 N Anywhere St');
GO

CREATE TABLE Borrower
(
CardNo VARCHAR (30), Name VARCHAR (30), [Address] VARCHAR (30), Phone VARCHAR (30),
);
GO
INSERT INTO [Borrower]
VALUES 
	 ('001','Bill Gates','122 White Water St','555-555-1212'),
	 ('002','Phil Mica','123 White Water St','555-555-1213'),
	 ('003','Jim Bob','124 White Water St','555-555-1214'),
	 ('004','Joe Blow','125 White Water St','555-555-1215'),
	 ('005','Amy Newman','126 White Water St','555-555-1216'),
	 ('006','Phil Knight','127 White Water St','555-555-1217'),
	 ('007','Michael Jordan','128 White Water St','555-555-1218'),
	 ('008','Katness Everdeen','129 White Water St','555-555-1219'),
	 ('009','DJ Fresh','130 White Water St','555-555-1220'),
	 ('010','Big Daddy','131 White Water St','555-555-1221');
GO
CREATE TABLE BOOK_COPIES
(
Bookid VARCHAR (30), Branchid VARCHAR (30), [No_Of_Copies] VARCHAR (30),
);
GO
INSERT INTO BOOK_COPIES
VALUES 
	 ('001','001','5'),
	 ('002','001','5'),
	 ('003','001','5'),
	 ('004','001','5'),
	 ('005','001','5'),
	 ('006','001','5'),
	 ('007','001','5'),
	 ('008','001','5'),
	 ('009','001','5'),
	 ('010','001','5'),
	 ('001','002','5'),
	 ('002','002','5'),
	 ('003','002','5'),
	 ('004','002','5'),
	 ('005','002','5'),
	 ('006','002','5'),
	 ('007','002','5'),
	 ('008','002','5'),
	 ('009','002','5'),
	 ('010','002','5'),
	 ('001','003','5'),
	 ('002','003','5'),
	 ('003','003','5'),
	 ('004','003','5'),
	 ('005','003','5'),
	 ('006','003','5'),
	 ('007','003','5'),
	 ('008','003','5'),
	 ('009','003','5'),
	 ('010','003','5'),
	 ('001','004','5'),
	 ('002','004','5'),
	 ('003','004','5'),
	 ('004','004','5'),
	 ('005','004','5'),
	 ('006','004','5'),
	 ('007','004','5'),
	 ('008','004','5'),
	 ('009','004','5'),
	 ('010','004','5');
GO
CREATE TABLE BOOK_LOANS
(
Bookid VARCHAR (30), Branchid VARCHAR (30), CardNo VARCHAR (30), DateOut DATE , DueDate DATE ,
);
GO
INSERT INTO BOOK_LOANS
VALUES 
	 ('001','001','001','2/10/17','5/10/17'),
	 ('002','001','001','2/10/17','5/10/17'),
	 ('003','001','001','2/10/17','5/10/17'),
	 ('004','001','001','2/10/17','5/10/17'),
	 ('005','001','001','2/10/17','5/10/17'),
	 ('001','001','002','1/10/17','5/10/17'),
	 ('007','002','002','1/10/17','4/10/17'),
	 ('008','002','002','1/10/17','4/10/17'),
	 ('009','002','002','1/10/17','4/10/17'),
	 ('010','002','002','1/10/17','4/10/17'),
	 ('011','002','002','1/10/17','4/10/17'),
	 ('003','004','003','2/1/17','5/1/17'),
	 ('004','004','003','2/1/17','5/1/17'),
	 ('011','003','004','2/11/17','5/11/17'),
	 ('012','001','005','1/11/17','4/11/17'),
	 ('013','002','006','1/1/17','4/1/17'),
	 ('014','004','007','1/16/17','5/16/17'),
	 ('015','002','008','2/4/17','5/4/17'),
	 ('012','002','002','2/4/17','5/4/17'),
	 ('003','002','001','2/4/17','5/4/17'),
	 ('011','002','008','2/4/17','5/4/17'),
	 ('002','002','007','2/4/17','5/4/17'),
	 ('003','003','005','2/4/17','5/4/17'),
	 ('005','003','006','2/4/17','5/4/17'),
	 ('010','003','005','2/4/17','5/4/17'),
	 ('015','003','004','2/4/17','5/4/17'),
	 ('010','002','003','2/4/17','5/4/17'),
	 ('009','002','003','2/4/17','5/4/17'),
	 ('008','004','002','2/4/17','5/4/17'),
	 ('007','004','001','2/4/17','5/4/17'),
	 ('006','004','008','2/4/17','5/4/17'),
	 ('005','004','007','2/4/17','5/4/17'),
	 ('004','002','006','2/4/17','5/4/17'),
	 ('003','002','005','2/4/17','5/4/17'),
	 ('011','004','004','2/4/17','2/22/17'),
	 ('012','002','003','2/4/17','5/4/17'),
	 ('013','001','002','2/4/17','5/4/17'),
	 ('014','003','001','2/4/17','5/4/17'),
	 ('015','001','008','2/4/17','5/4/17'),
	 ('016','002','007','2/4/17','5/4/17'),
	 ('017','001','001','2/4/17','5/4/17'),
	 ('018','002','002','2/4/17','5/4/17'),
	 ('019','003','003','2/4/17','5/4/17'),
	 ('011','001','004','2/4/17','5/4/17'),
	 ('001','002','003','2/4/17','5/4/17'),
	 ('002','001','006','2/4/17','5/4/17'),
	 ('003','002','005','2/4/17','5/4/17'),
	 ('004','001','008','2/4/17','5/4/17'),
	 ('005','002','004','2/4/17','5/4/17'),
	 ('006','001','003','2/4/17','5/4/17');
GO


CREATE TABLE PUBLISHER
(
Name VARCHAR (30), [Address] VARCHAR (30), Phone VARCHAR (30),
);
GO
INSERT INTO PUBLISHER
VALUES 
	 ('Dr Who Publish','110 Somewhere St','555-555-2221'),
	 ('Wild Cat Publish','111 Somewhere St','555-555-2222'),
	 ('Mike Smith Publish','112 Somewhere St','555-555-2223'),
	 ('DD Publish Publish','113 Somewhere St','555-555-2224'),
	 ('G Man Publish','114 Somewhere St','555-555-2225'),
	 ('Quartz Publish','115 Somewhere St','555-555-2226'),
	 ('Diamond Publish','116 Somewhere St','555-555-2227'),
	 ('Slate Publish','117 Somewhere St','555-555-2228'),
	 ('Forgotten Publish','118 Somewhere St','555-555-2229'),
	 ('Freedom Publish','119 Somewhere St','555-555-2230'),
	 ('Katskills Publish','120 Somewhere St','555-555-2231'),
	 ('Great Publish','121 Somewhere St','555-555-2232'),
	 ('Franks Publish','122 Somewhere St','555-555-2233'),
	 ('Smiths Publish','123 Somewhere St','555-555-2234'),
	 ('Tiger Publish','124 Somewhere St','555-555-2235');

GO
CREATE TABLE BOOK_AUTHORS
(
Bookid VARCHAR (30), AuthorName VARCHAR (30),
);
GO
INSERT INTO BOOK_AUTHORS
VALUES 
	 ('001','Stephen King'),
	 ('002','Big Daddy'),
	 ('003','Musckrat King'),
	 ('004','Dr Phil'),
	 ('005','Mike Simmons'),
	 ('006','Dave King'),
	 ('007','Dr Green'),
	 ('008','Dr Black'),
	 ('009','Dr Smith'),
	 ('010','Ada Adams'),
	 ('011','Aja Price'),
	 ('012','Dean Smith'),
	 ('013','Dean Smith'),
	 ('014','Dean Smith'),
	 ('015','Dean Smith'),
	 ('016','Dean Smith'),
	 ('017','Dean Smith'),
	 ('018','Dean Smith'),
	 ('019','Dean Smith'),
	 ('020','Dean Smith');
GO

CREATE TABLE BOOK
(
Bookid VARCHAR (30), Title VARCHAR (30), PublisherName VARCHAR (30)
);
GO
INSERT INTO BOOK
VALUES 
	('001','The Lost Tribe','Dr Who Publish'),
	('002','Cat','Dr Who Publish'),
	('003','Dog','Dr Who Publish'),
	('004','Pig','Wild Cat Publish'),
	('005','Zebra','Wild Cat Publish'),
	('006','Rhino','Wild Cat Publish'),
	('007','Mouse','Mike Smith Publish'),
	('008','Elk','DD Publish Publish'),
	('009','Bison','Dr Who Publish'),
	('010','Duck','Dr Who Publish'),
	('011','Ball','G Man Publish'),
	('012','Gray','Quartz Publish'),
	('013','Black','Diamond Publish'),
	('014','White','Slate Publish'),
	('015','Green','Forgotten Publish'),
	('016','Blue','Freedom Publish'),
	('017','Yellow','Katskills Publish'),
	('018','Orange','Great Publish'),
	('019','Pink','Franks Publish'),
	('020','Purple','Smiths Publish'),
	('021','Teal','Tiger Publish');
GO
-- JOINING TABLES --

Select *
FROM BOOK AS B
INNER JOIN BOOK_COPIES AS BC
ON B.Bookid = BC.Bookid
INNER JOIN BOOK_LOANS AS BL
ON BC.Bookid = BL.Bookid
INNER JOIN BOOK_AUTHORS AS BA
ON BL.Bookid = BA.Bookid
INNER JOIN PUBLISHER AS PB
ON B.PublisherName = PB.Name

SELECT *
FROM LIBRARY_BRANCH AS LB
INNER JOIN BOOK_LOANS AS BL
ON LB.Branchid = BL.Branchid
INNER JOIN BOOK_COPIES AS BC
ON BL.Branchid = BC.Branchid

SELECT *
FROM BOOK_LOANS AS BL
INNER JOIN Borrower AS BO
ON BL.CardNo = BL.CardNo




