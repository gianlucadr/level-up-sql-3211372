-- Prepare a report of the library patrons
-- who have checked out the fewest books.
select count(Email) AS LoansTimes, Email from Patrons inner JOIN
Loans on Patrons.PatronID=Loans.PatronID
group by Patrons.PatronID
order by LoansTimes ASC;