SELECT Employee.FirstName, Employee.LastName, Invoice.InvoiceId
FROM Employee
INNER JOIN Customer ON Employee.EmployeeId = Customer.SupportRepId
INNER JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
WHERE Employee.Title = 'Sales Support Agent'