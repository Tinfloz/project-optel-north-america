select * from df_usa_hq

-- selecting the top 15 Canada based companies:
select*
from(
    select*,
    dense_rank() over(order by sales desc) as rnk
    from df_usa_hq
    ) x
where x.rnk between 1 and 15