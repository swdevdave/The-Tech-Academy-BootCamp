/*
1. How many copies of the book titled The Lost Tribe are owned by the library branch whose name
is"Sharpstown"?
*/

USE LIBRARY
GO

SELECT BranchName, B.title, BC.No_Of_Copies
FROM Library_branch AS LB
INNER JOIN BOOK_COPIES AS BC
ON LB.Branchid = BC.Branchid
CROSS JOIN BOOK AS B
WHERE LB.Branchid = '001' AND BC.Bookid = '001' AND B.Title = 'The Lost Tribe'