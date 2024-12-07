-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.
select DueDate, Title, FirstName, Email from loans 
inner join Patrons on
loans.PatronID=Patrons.PatronID inner join Books on
Loans.BookID=Books.BookID
where DueDate='2022-07-13' and ReturnedDate is null;