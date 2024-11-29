-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

select * from Customers where FirstName='Loretta' and LastName='Hundey';
Select * from Dishes where Name='House Salad';
Select * from Dishes where Name='Mini Cheeseburgers';
Select * from Dishes where Name='Tropical Blue Smoothie';

Select * from Orders order by OrderID desc;
Insert into ORDERS (CustomerID,OrderDate) VALUES ((select CustomerID from Customers 
  where FirstName='Loretta' and LastName='Hundey'),null);

SELECT * from OrdersDishes order by OrdersDishesID DESC;

Insert into OrdersDishes (OrderID, DishID) VALUES (1001,(Select DishID from Dishes where Name='House Salad'));
Insert into OrdersDishes (OrderID, DishID) VALUES (1001,(Select DishID from Dishes where Name='Mini Cheeseburgers'));
Insert into OrdersDishes (OrderID, DishID) VALUES (1001,(Select DishID from Dishes where Name='Tropical Blue Smoothie'));

SELECT SUM(Dishes.Price), OrdersDishes.OrderID
from OrdersDishes inner join Dishes on
OrdersDishes.DishID=Dishes.DishID
where OrdersDishes.OrderID=1001
group by OrdersDishes.OrderID;