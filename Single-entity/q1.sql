-- Prepare a list of offices sorted by country, state, city.

select territory from offices
    order by country, state, city;