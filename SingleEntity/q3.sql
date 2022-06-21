/*
What is the total of payments received?

Key op:
    sum()   -- return the sum of entries in the parameter
*/

use classicmodels;

select sum(amount) as 'The total of payments received' from payments;   -- print the sum of column "amount" in subtable "payments"