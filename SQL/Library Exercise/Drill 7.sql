/*

7. For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of
copies owned by the library branch whose name is "Central"
Now, create a stored procedure that will execute one or more of those queries, based on user
choice.

*/


CREATE PROC THEKING @KING VARCHAR(30)
AS


SELECT title, BranchName, COUNT(No_Of_Copies) AS 'TOTAL STEVEN KING'
FROM BOOK AS B
INNER JOIN BOOK_COPIES AS BC
ON B.Bookid = BC.Bookid
INNER JOIN BOOK_AUTHORS AS BA
ON BC.Bookid = BA.Bookid
CROSS JOIN LIBRARY_BRANCH AS LB
WHERE AuthorName = @KING AND BranchName = 'Central'
GROUP BY Title, BranchName, No_Of_Copies


