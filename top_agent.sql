SELECT FirstName, LastName, MAX(Sales)
FROM(SELECT Employee.FirstName, Employee.LastName, SUM(Invoice.Total) AS Sales
FROM Employee
INNER JOIN Customer ON Employee.EmployeeId = Customer.SupportRepId
INNER JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Employee.FirstName, Employee.LastName)