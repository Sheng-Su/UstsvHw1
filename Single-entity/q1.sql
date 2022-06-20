-- Prepare a list of offices sorted by country, state, city.

select territory from offices   -- extract column "territory" from subtable "offices"
    order by country, state, city;  -- sorted by "country", then by "state", and then by "city"