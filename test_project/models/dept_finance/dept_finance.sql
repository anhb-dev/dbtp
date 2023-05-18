SELECT
    sum(actualprice) as amount,end_use
FROM
   {{ref('base_public_invoice')}}
    group by end_use
