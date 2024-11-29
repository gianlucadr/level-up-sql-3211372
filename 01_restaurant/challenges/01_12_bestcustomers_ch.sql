-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.
Select COUNT(Orders.OrderID) as OrderCount, Customers.FirstName, Customers.LastName, Customers.Email 
from Orders inner join
Customers on Orders.CustomerID=Customers.CustomerID
group by Customers.CustomerID
order by OrderCount DESC
limit 10;