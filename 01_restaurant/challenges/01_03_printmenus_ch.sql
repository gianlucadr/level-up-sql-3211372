-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.
SELECT Name,Price from dishes order by Price ASC;

SELECT Name,Type, Price from dishes 
where Type in ('Beverage','Appetizer')
order by Price ASC;

SELECT Name,Type, Price from dishes 
where Type not in ('Beverage')
order by Price ASC;