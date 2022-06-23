/*
Which payments in any month and year are more than twice the average for that month and year (i.e. compare all payments in Oct 2004 with the average payment for Oct 2004)? 
    Order the results by the date of the payment. You will need to use the date functions.

Key op:
    create view -- create a virtual table
    avg()   -- return the average of column inputed 
    month() -- return the month of date inputed
    year()  -- return the year of date inputed
*/

use classicmodels;

create view averagePaymentPerMonth as
    select avg(amount) as avgAmount, 
        month(paymentDate) as payMonth, 
        year(paymentDate) as payYear   
        from payments
    group by month(paymentDate), year(paymentDate)
    order by year(paymentDate), month(paymentDate);

select * from payments
    where amount > 2 * (
        select avgAmount from averagePaymentPerMonth 
            where month(paymentDate) = payMonth 
                and year(paymentDate) = payYear)
order by year(paymentDate), month(paymentDate);