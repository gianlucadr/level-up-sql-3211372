-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.
select * from Customers where FirstName='Norby'; --ID=64
select * from Reservations Where CustomerID=64 order by Date DESC;

DELETE from Reservations where ReservationID=2000;