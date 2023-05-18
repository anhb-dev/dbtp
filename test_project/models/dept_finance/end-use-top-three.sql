select * from (
select *,rank()over(order by amount desc ) as row_num 
from {{ref('dept_finance')}}
)
where row_num <= 3