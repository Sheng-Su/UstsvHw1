/*
Who reports to William Patterson?

Key op:
    (<subqueries>)  -- we can apply queries in queries
*/

use classicmodels;

select * from employees
    where reportsTo = (
        select employeeNumber from employees
            where lastName = "Patterson" and firstName = "William"
    );