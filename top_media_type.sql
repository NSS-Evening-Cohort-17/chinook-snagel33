SELECT Name, MAX(Sales)
FROM(SELECT MediaType.Name, COUNT(InvoiceLine.InvoiceId) AS Sales
FROM Invoice
INNER JOIN InvoiceLine ON Invoice.InvoiceId = InvoiceLine.InvoiceId
INNER JOIN Track ON InvoiceLine.TrackId = Track.TrackId
INNER JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY MediaType.Name ORDER BY Sales DESC)