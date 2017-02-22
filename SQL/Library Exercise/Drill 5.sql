/*

5. For each library branch, retrieve the branch name and the total number of books loaned out from
that branch.

*/

USE LIBRARY
GO


SELECT DISTINCT LB.BranchName, count (BL.Branchid) AS 'TOTAL LOANED'
FROM LIBRARY_BRANCH AS LB
INNER JOIN Book_Loans AS BL
ON LB.Branchid = BL.Branchid
GROUP BY LB.BranchName, BL.Branchid 