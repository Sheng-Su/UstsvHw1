/*
List the names of customers and their corresponding order number where a particular order from that customer has a value greater than $25,000?

Key op:
    where   -- similar to the if statement
*/

use classicmodels;

select customerName, orderNumber, amount from payments
    inner join orders 
        on orders.customerNumber = payments.customerNumber
    inner join customers
        on customers.customerNumber = payments.customerNumber
    where amount > 25000