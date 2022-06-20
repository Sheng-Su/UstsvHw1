/*
What is the total of payments received?

Key op:
    sum()   -- return the sum of entries in the parameter
*/
select sum(amount) from payments;   -- print the sum of column "amount" in subtable "payments"