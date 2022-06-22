/*
Who is at the top of the organization (i.e.,  reports to no one).

Key op:
    is NULL -- if a recording is "null" use "is" instead of "="
*/

use classicmodels;

select * from employees
    where reportsTo is NULL;