/*
Prepare a list of offices sorted by country, state, city.
 
Key op:
    order by    -- sort the output by the sequence afterwards
*/

use classicmodels;

select territory from offices   -- print column "territory" from subtable "offices"
    order by country, state, city;  -- sort by "country", then by "state", and then by "city"