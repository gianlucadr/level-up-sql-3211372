-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424
--Select BookID from Books where Barcode=6435968624;

UPDATE Loans Set ReturnedDate='2022-07-05' where BookID = (Select BookID from Books where Barcode=6435968624)
and ReturnedDate is null;

UPDATE Loans Set ReturnedDate='2022-07-05' where BookID = (Select BookID from Books where Barcode=5677520613)
and ReturnedDate is null;

UPDATE Loans Set ReturnedDate='2022-07-05' where BookID = (Select BookID from Books where Barcode=8730298424)
and ReturnedDate is null;
--Select * from Loans where BookID=105 and ReturnedDate is null;

--SELECT * from Loans inner join Books ON
--Loans.BookID = Books.BookID
--where Barcode=6435968624;