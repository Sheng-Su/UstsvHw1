/*
List the order dates in descending order for orders for the 1940 Ford Pickup Truck.

Key op:
    order by ... desc   -- return the output in the decending order
*/
use classicmodels;

select orderDate from orders
    inner join orderdetails 
        on orderdetails.orderNumber = orders.orderNumber
    inner join products
        on orderdetails.productCode = products.productCode
    where productName = "1940 Ford Pickup Truck"
    order by orderDate desc;
    