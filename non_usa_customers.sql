SELECT Customer.FirstName, Customer.LastName, Customer.CustomerId, Customer.Country
FROM Customer
WHERE Customer.Country != 'USA'