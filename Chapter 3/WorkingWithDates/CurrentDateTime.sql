SELECT *
FROM Orders
WHERE MONTH(CreationDate) = 5 
  AND YEAR(CreationDate) = '2016'