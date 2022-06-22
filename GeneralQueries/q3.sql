/*
List all the products purchased by Herkku Gifts.

Key op:
    join ... on ... -- we can connect multiple tables together by multiple joins
*/

use classicmodels;

select productName from products
    join orderdetails 
        on products.productCode = orderdetails.productCode
    join orders
        on orders.orderNumber = orderdetails.orderNumber
    join customers
        on customers.customerNumber = orders.customerNumber
    where customerName = "Herkku Gifts";