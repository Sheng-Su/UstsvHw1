/*
List products ending in 'ship'.

Key op:
    like    -- the condition statement regulating patterns
    "%" -- any character in any repetitive amount
*/

use classicmodels;

select * from products
    where productName like "%ship";