-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.
--Select BookID from Loans where ReturnedDate is null; --books out


select Title, Barcode from Books 
where published between 1890 and 1899 and 
BookID not in (Select BookID from Loans where ReturnedDate is null --books out
)
group by Books.BookID;