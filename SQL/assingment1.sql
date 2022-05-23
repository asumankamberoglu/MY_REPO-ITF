1) SELECT InvoiceId, CustomerId, total FROM invoices ORDER BY CustomerId ASC, total DESC;

2) SELECT InvoiceId, CustomerId, total FROM invoices ORDER BY total DESC, CustomerId ASC;

3) Firstly, it sorts the first command, then it sorts the other command in accordance with the first command. So if the command order changes, our table will be changed,

4) SELECT * FROM invoices WHERE total >= 10 LIMIT 10;

5) SELECT * FROM invoices WHERE total < 10 LIMIT 5;

6) SELECT * FROM tracks WHERE name like 'B%s';

7) SELECT * FROM invoices WHERE BillingCountry IN('USA', 'Germany', 'Norway', 'Canada') AND InvoiceDate BETWEEN '2010-01-01' AND '2010-12-31' ORDER BY InvoiceDate DESC;