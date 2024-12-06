-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.
select patronID from Patrons where Email='jvaan@wisdompets.com';
select BookID from Books where barcode=2855934983;
select BookID from Books where barcode=4043822646;

INSERT INTO Loans (BookID, PatronID, LoanDate, DueDate) VALUES
( (select BookID from Books where barcode=2855934983),
 (select patronID from Patrons where Email='jvaan@wisdompets.com'),
'2022-08-25','2022-09-08'
),( (select BookID from Books where barcode=4043822646),
(select patronID from Patrons where Email='jvaan@wisdompets.com'),
'2022-08-25','2022-09-08');

--select * from Books inner JOIN
--Loans on Books.BookID=Loans.BookID inner JOIN
--Patrons on Patrons.PatronID = Loans.PatronID
--where Books.barcode=2855934983 or Books.barcode=4043822646;