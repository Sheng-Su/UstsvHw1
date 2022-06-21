/*
List products sold by order date.

Key op:
    inner join ... on ...   -- connect two tables by conditions
*/

use classicmodels;

select productCode from orderdetails
    inner join orders on orderdetails.orderNumber = orders.orderNumber
    group by orderDate;