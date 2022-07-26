SELECT COUNT(InvoiceLine.InvoiceLineId)
FROM InvoiceLine
GROUP BY InvoiceLine.InvoiceId