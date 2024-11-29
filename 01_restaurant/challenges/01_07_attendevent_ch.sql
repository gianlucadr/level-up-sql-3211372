-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.
INSERT INTO AnniversaryAttendees (CustomerID, PartySize)
VALUES (
(select CustomerID from Customers where Email ='atapley2j@kinetecoinc.com'),3);