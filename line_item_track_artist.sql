SELECT InvoiceLine.InvoiceLineId, Track.Name, Track.Composer
FROM InvoiceLine
INNER JOIN Track ON InvoiceLine.TrackId = Track.TrackId