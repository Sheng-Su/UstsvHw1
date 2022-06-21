/*
List products sold by order date.
*/

use classicmodels;

select productCode from orderdetails
    inner join orders on orderdetails.orderNumber = orders.orderNumber
    order by orderDate;