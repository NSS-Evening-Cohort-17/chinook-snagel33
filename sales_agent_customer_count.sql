SELECT Employee.FirstName, Employee.LastName, COUNT(Customer.CustomerId)
FROM Employee
INNER JOIN Customer ON Employee.EmployeeId = Customer.SupportRepId
GROUP BY Employee.FirstName, Employee.LastName