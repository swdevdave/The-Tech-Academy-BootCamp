/*
2. How many copies of the book titled The Lost Tribe are owned by each library branch?
*/


USE LIBRARY
GO

SELECT BranchName, B.title, BC.No_Of_Copies
FROM Library_branch AS LB
INNER JOIN BOOK_COPIES AS BC
ON LB.Branchid = BC.Branchid
CROSS JOIN BOOK AS B
WHERE BC.Bookid = '001' AND B.Title = 'The Lost Tribe'