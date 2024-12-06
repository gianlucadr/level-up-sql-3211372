-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.
SELECT * FROM Books;

select * from Books where Title='Dracula';

SELECT (select COUNT(BookID) from Books where Title='Dracula')
-
(select count(Books.BookID) from Books 
inner join Loans on
Books.BookID = Loans.BookID
where Title='Dracula' and ReturnedDate is null)
 As available;