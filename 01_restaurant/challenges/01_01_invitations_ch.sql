-- Generate a list of customer information.

-- Show their first name, last name, and email address.
-- Sort the list of results by last name.
SELECT FirstName, LastName, email FROM Customers
order by LastName ASC;