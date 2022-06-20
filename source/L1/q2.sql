/*
Report total payments for Atelier graphique.
*/
selct c.customerName,
    sum(payments, amount)
from payments
    inner join customers c on payments.customerNumber = c.customerNumber
where c.customerName = 'Atelier graphique'
group by c.customerName