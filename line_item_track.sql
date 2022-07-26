SELECT InvoiceLine.InvoiceLineId, InvoiceLine.TrackId, Track.Name
FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
