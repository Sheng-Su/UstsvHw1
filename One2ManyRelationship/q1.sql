/*
Report the account representative for each customer.

Key op:
    concat()    -- return the concatenation of parameters
    inner join ... on ...   -- connect tables by related columns
*/

use classicmodels;

select customerName, concat(employees.firstName, ' ', employees.lastName) as 'Account representative'
    from customers 
    inner join employees on customers.salesRepEmployeeNumber = employees.employeeNumber;