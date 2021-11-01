select * from sales.transactions ;

select count(*) from sales.transactions ;

select * from sales.transactions where market_code='Mark001' ;

select distinct(product_code) from sales.transactions where market_code='Mark001';

select * from sales.transactions where currency='USD' ;

select sales.transactions.*,sales.date.* from sales.transactions 
join sales.date on transactions.order_date =date.date
where date.year=2020;

select sum(sales_amount) from sales.transactions
join sales.date on transactions.order_date=date.date
where date.year=2020;

select sum(sales_amount) from sales.transactions
join sales.date on transactions.order_date=date.date
where date.year=2020 and date.month_name='January';

select sum(sales_amount) from sales.transactions
join sales.date on transactions.order_date=date.date
where date.year=2020 and transactions.market_code='Mark001';