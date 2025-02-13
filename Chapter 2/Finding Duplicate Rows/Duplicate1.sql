SELECT c.CustomerID,
  c.FirstName,
  c.LastName,
  COUNT(1) as NUM_ORDERS
FROM Customer c
  JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID,
  c.FirstName,
  c.LastName
ORDER BY NUM_ORDERS DESC