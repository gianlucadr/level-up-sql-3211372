-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.
select * from Customers where FirstName='Cleo' and LastName='Goldwater';

Select * from Dishes where name ='Quinoa Salmon Salad';

UPDATE Customers SET FavoriteDish=(Select DishID from Dishes where name ='Quinoa Salmon Salad')
WHERE FirstName='Cleo' and LastName='Goldwater';