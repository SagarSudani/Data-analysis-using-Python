#Data exploration   
#Top sales by 5 retailer
SELECT * FROM cocacolasale.`total sale`
order by Total_sales desc
limit 5;

SELECT * FROM cocacolasale.margin
order by margin desc
limit 5;

#check null values
SELECT invoice_date
FROM cocacolasale.invoicedate
where invoice_date is  null;


#Count Rows
SELECT count(*) FROM cocacolasale.profits;

# MIN, MAX, AVG and SUM
SELECT MIN(Profit), MAX(Profit), AVG(Profit), SUM(Profit)
FROM cocacolasale.profits;

#Group by and order by 
SELECT Sum(Profit), Region
FROM cocacolasale.profits
where Region is not null
group by Region
order by sum(Profit) desc ;

# identify duplicate 
SELECT Retailer,count(*)
FROM cocacolasale.retailer
GROUP BY Retailer
HAVING COUNT(*) > 1;

#Inner join
select *
from cocacolasale.Profits
inner join cocacolasale.beveragesbrand
on Profits.brand_profit= beveragesbrand.Brand ;

#left join
select margin.Retailer, margin.Margin,margin.City,beveragesbrand.Company,margin.Brand
from cocacolasale.margin
left join cocacolasale.beveragesbrand
on margin.Brand = beveragesbrand.Brand;

#cross join
select totalsale.Retailer,totalsale.Total_Sales,totalsale.Brand_sale,unitsold.Units_price
from cocacolasale.totalsale
cross join cocacolasale.unitsold
where Units_price < 0.55;






