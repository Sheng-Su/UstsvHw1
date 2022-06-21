/*
Report the total payments by date

Key op:
    group by    -- perform the operation in groups of selected column(s)
*/

select paymentDate, sum(amount) as 'Total payments'
    from payments
    group by paymentDate;