select * from datasets_sales
select * from datasets_larisa
select * from datasets_population
select * from datasets_shops

--1.summarize the sales amount and quanlity by city, shop
select shop, city, sum(sales) as total_sales, sum(quantity) as total_quantity
from (select * from datasets_sales 
		union select * from datasets_larisa) a 
inner join datasets_shops b
on a.shop=b.column_1
group by city, shop
order by total_sales desc, total_quantity desc;

--2.rank the total sales amount by brand for each shop
select shop, brand, total_sales,  rank() over  (partition by shop order by total_sales desc) as ranking
from (select shop, brand, sum(sales) as total_sales
		from (select * from datasets_sales union select * from datasets_larisa) a
group by brand,shop) b;

--3.rank each brand's total sales across shop by year
select year_nbr, brand, total_sales, rank() over  (partition by year_nbr order by total_sales desc) as rank
from (select year(date) as year_nbr, brand, sum(sales) as total_sales
			from (select * from datasets_sales union select * from datasets_larisa)  a 
				group by year(date), brand) b

--4.rank the avg yearly sale by city, add city population rank of 2018 to the table, 1 is the most pop 
select c.city, avg(total_sales) as avg_year_sale, rank() over  (order by avg(total_sales) desc) as rank_sale , pop2018, rank() over (order by pop2018 desc) as rank_pop
from (
select city, year(date) as year_nbr, sum(sales) as total_sales
from datasets_sales a join  datasets_shops b
on a.shop = b.Column_1
group by  city, year(date) ) c join datasets_population d 
on c.city = d.city
group by c.city, pop2018
order by rank_sale;

--5. list shop_6 5 years total sale with running total (cumulative total)
select year(date) as year_nbr, sum(sales) as sales_total,   sum(sum(sales) ) over (order by year(date)) as running_total 
from datasets_sales
where shop='shop_6'
group by year(date)
order by year_nbr

--6.list shop_6 each brand's yearly sales from 2016 to 2018
select brand, 
	   year(date) as year_nbr,
	   sum(sales) as yearly_sales
from  datasets_sales
where shop = 'shop_6' and year(date) in  (2016,2017,2018)
group by brand, year(date)
order by brand, year(date);
