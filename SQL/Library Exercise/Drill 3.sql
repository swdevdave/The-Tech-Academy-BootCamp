/*
3. Retrieve the names of all borrowers who do not have any books checked out.
*/


USE LIBRARY
GO

SELECT BO.Name
FROM Borrower AS BO
FULL JOIN BOOK_LOANS AS BL ON BO.CardNo = BL.CardNo
WHERE BL.DueDate IS NULL