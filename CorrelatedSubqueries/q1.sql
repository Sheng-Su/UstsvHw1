/*
Who reports to Mary Patterson?

Key op:
    from <TABLE>, <TABLE>   -- make the table talk to itself
*/

use classicmodels;

select A.firstName, A.lastName from employees A, employees B
    where A.reportsTo = B.employeeNumber 
        and B.firstName = "Mary" 
        and B.lastName = "Patterson";