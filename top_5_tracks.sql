SELECT Name, Sales
FROM(SELECT Track.Name, COUNT(InvoiceLine.TrackId) AS Sales
FROM InvoiceLine 
INNER JOIN Track ON InvoiceLine.TrackId = Track.TrackId
INNER JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Track.Name ORDER BY Sales DESC LIMIT 5)