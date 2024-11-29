-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.
SELECT * from Reservations
inner join Customers on
Reservations.CustomerID = Customers.CustomerID
where Customers.LastName like 'St%' and PartySize=4
and Date>='2022-06-14'; --order by Date DESC; --;