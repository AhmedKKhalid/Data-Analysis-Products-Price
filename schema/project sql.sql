/* transactions table  */
select * from sales.transactions ;

/* number of row in transactions table */
select count(*) from sales.transactions ;

/* Show transactions for Chennai market (market code for chennai is Mark001  */
select * from sales.transactions where market_code='Mark001' ;

/* Show distrinct product codes that were sold in chennai */
select distinct(product_code) from sales.transactions where market_code='Mark001';

/*Show transactions where currency is US dollars */
select * from sales.transactions where currency='USD' ;

/* Show transactions in 2020 join by date table */
select sales.transactions.*,sales.date.* from sales.transactions 
join sales.date on transactions.order_date =date.date
where date.year=2020;

/* Show total revenue in year 2020 */
select sum(sales_amount) from sales.transactions
join sales.date on transactions.order_date=date.date
where date.year=2020;

/* Show total revenue in year 2020, January Month */
select sum(sales_amount) from sales.transactions
join sales.date on transactions.order_date=date.date
where date.year=2020 and date.month_name='January';

/* Show total revenue in year 2020 in Chennai */
select sum(sales_amount) from sales.transactions
join sales.date on transactions.order_date=date.date
where date.year=2020 and transactions.market_code='Mark001';