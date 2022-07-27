SELECT BillingCountry, MAX(Sales)
FROM(SELECT Invoice.BillingCountry, SUM(Invoice.Total) AS Sales
FROM Invoice
GROUP BY Invoice.BillingCountry)