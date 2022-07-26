SELECT Invoice.Total, Customer.FirstName, Customer.LastName, Customer.Country, Employee.FirstName, Employee.LastName
FROM Invoice
INNER JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
INNER JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
WHERE Employee.Title = 'Sales Support Agent'