/*
Find products containing the name 'Ford'.

Key op:
    like    -- the condition statement regulating patterns
*/

use classicmodels;

select * from products
    where productName like "%Ford%";