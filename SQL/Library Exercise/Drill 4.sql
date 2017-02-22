/*
For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today,
retrieve the book title, the borrower's name, and the borrower's address.
*/

USE LIBRARY
GO


SELECT title, name, BO.[Address]
FROM Borrower AS BO
INNER JOIN Book_Loans AS BL
ON BL.CardNo = BO.CardNo
INNER JOIN BOOK AS B
ON BL.Bookid = B.Bookid
CROSS JOIN LIBRARY_BRANCH AS LB
WHERE branchname = 'Sharpstown' AND DueDate = '2/22/17'