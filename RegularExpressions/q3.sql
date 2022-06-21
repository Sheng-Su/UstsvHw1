/*
Report the number of customers in Denmark, Norway, and Sweden.

Key op:
    where ... in ...  -- filter out the outputs not included in the parameter(s)
*/

use classicmodels;

select * from customers
    where country in ("Denmark", "Norway", "Sweden");   -- where country = "Denmark" or coutry = "Norway" or coutry = "Sweden";

