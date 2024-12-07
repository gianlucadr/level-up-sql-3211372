-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.
select COUNT(BookID),Title,  Published from Books group by Published, Title 
order by Published desc;
select Published, COUNT(DISTINCT(Title)) as pubcount from Books group by 
Published order by pubcount desc;
-- Report 2: Show the five books that have been
-- checked out the most.
SELECT COUNT(Loans.LoanID) As BookTimes, Title from Books
inner join Loans on Books.BookID=Loans.BookID group by
Books.Title order by BookTimes DESC;