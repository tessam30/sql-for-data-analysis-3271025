SELECT FirstName, LastName, Address, COUNT(1)
FROM Customer
GROUP BY FirstName, LastName
HAVING COUNT(1) > 1