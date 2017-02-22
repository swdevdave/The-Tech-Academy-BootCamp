/*
6. Retrieve the names, addresses, and number of books checked out for all borrowers who have more
than five books checked out.
*/

USE LIBRARY
GO


SELECT BO.name, BO.[Address], count (BL.CardNo) AS 'TOTAL OUT'
FROM Borrower AS BO
INNER JOIN Book_Loans AS BL
ON BL.CardNo = BO.CardNo
INNER JOIN BOOK AS B
ON BL.Bookid = B.Bookid
Group By BO.name, BO.[Address], BL.CardNo