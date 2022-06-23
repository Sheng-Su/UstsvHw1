/*
Report for each product, the percentage value of its stock on hand as a percentage of the stock on hand for product line to which it belongs. 
    Order the report by product line and percentage value within product line descending. Show percentages with two decimal places.

Key op:
    round() -- round the return output by the decimal places in the parameter
*/

use classicmodels;

create view prodLineVal as 
    select sum(quantityInStock * buyPrice) as lineValue, 
        productLine
        from products
    group by productLine;

select round(quantityInStock*buyPrice/lineValue, 2) as 
    percentValue, productName, products.productLine
    from products
    left join prodLineVal on 
        products.productLine = prodLineVal.productLine
    order by products.productLine DESC;