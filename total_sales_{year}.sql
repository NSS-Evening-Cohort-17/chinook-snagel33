SELECT SUM(Invoice.InvoiceDate)
FROM Invoice
WHERE Invoice.InvoiceDate LIKE '2009%' OR Invoice.InvoiceDate LIKE '2011%'