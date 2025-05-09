Use retailbusiness;
SELECT * FROM retailbusiness.retail;
Delete from retail where category='Unknown';
select*from retail;
update retail set sub_category='Unknown' where sub_category is NULL;
select*from retail;
update retail set season='Unknown' where season is NULL;
select*from retail;
update retail set profit=0 where profit is NULL;
select*from retail;
update retail set sales=0 where sales is NULL;
select*from retail;
update retail set inventory_days=0 where inventory_days is NULL;
select*from retail;
select category,sub_category,sum(sales) as total_sales,sum(profit) as total_profit,(sum(profit)/sum(sales))*100 as profit_margin
from retail group by category,sub_category;