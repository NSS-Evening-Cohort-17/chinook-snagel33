SELECT Name, MAX(Sales)
FROM(SELECT Track.Name, COUNT(InvoiceLine.TrackId) AS Sales
FROM InvoiceLine 
INNER JOIN Track ON InvoiceLine.TrackId = Track.TrackId
INNER JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
WHERE Invoice.InvoiceDate LIKE "2013%"
GROUP BY Track.Name)