/*
Report total payments for Atelier graphique.

Key op:
    where   -- similar to the 'if' statement
*/

use classicmodels;

select customers.customerName, sum(payments.amount) as 'Total payments'
    from payments
    inner join customers on payments.customerNumber = customers.customerNumber
    where customers.customerName = 'Atelier graphique';