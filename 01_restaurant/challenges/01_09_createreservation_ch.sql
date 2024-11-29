-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)
Select * from Customers where Email='smac@kinetecoinc.com';

INSERT INTO Customers (FirstName, LastName, Email) VALUES ('Sam','McAdams','smac@kinetecoinc.com');



Insert INTO Reservations (CustomerID,Date,PartySize)
VALUES((Select CustomerID from Customers where email='smac@kinetecoinc.com'),'2022-08-12 18:00:00',5);

Select * from Reservations order by ReservationID DESC;