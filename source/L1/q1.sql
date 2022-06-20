/*
Report the account representative for each customer ? 
*/
select customerName,
    concat(e.firstName, ' ', e.lastName) As 'Account Representative'
from customers
    inner join employees e on customers.salesRepEmployeeNumber = e.employeeNumber;

