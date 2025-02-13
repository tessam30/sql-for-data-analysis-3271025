-- How much has a each person spent in total?
-- From the orders table, let's calculate total orders
-- From CustomerID, we can calculate the totals
SELECT Customer.CustomerID,
  FirstName,
  LastName,
  Sum(TotalDue) AS tot_due
FROM Customer
JOIN Orders on Customer.CustomerID = Orders.OrderID
GROUP BY Customer.CustomerID, 
  FirstName,
  LastName
ORDER BY tot_due DESC