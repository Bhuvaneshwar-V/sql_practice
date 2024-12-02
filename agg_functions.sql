USE org;

SELECT * FROM int_orders;

SELECT SUM(amount) FROM int_orders;


SELECT order_number, order_date, cust_id, salesperson_id, amount, SUM(amount) OVER()
FROM int_orders;

SELECT order_number, order_date, cust_id, salesperson_id, amount, SUM(amount) OVER(ORDER BY order_date)
FROM int_orders;

SELECT order_number, order_date, cust_id, salesperson_id, amount, SUM(amount) OVER(PARTITION BY salesperson_id)
FROM int_orders;

SELECT order_number, order_date, cust_id, salesperson_id, amount, SUM(amount) OVER(PARTITION BY salesperson_id ORDER BY order_date)
FROM int_orders;

SELECT order_number, order_date, cust_id, salesperson_id, amount, SUM(amount) OVER(ORDER BY order_date rows between 2 preceding and current row)
FROM int_orders;

SELECT order_number, order_date, cust_id, salesperson_id, amount, SUM(amount) OVER(ORDER BY order_date rows between 2 preceding and 1 preceding)
FROM int_orders;

SELECT order_number, order_date, cust_id, salesperson_id, amount, SUM(amount) OVER(ORDER BY order_date rows between 1 preceding and 1 following)
FROM int_orders;

SELECT order_number, order_date, cust_id, salesperson_id, amount, SUM(amount) OVER(ORDER BY order_date rows between unbounded preceding and current row)
FROM int_orders;

SELECT order_number, order_date, cust_id, salesperson_id, amount, 
SUM(amount) OVER(PARTITION BY salesperson_id ORDER BY order_date rows between 1 preceding and current row)
FROM int_orders;

-- LAG

SELECT order_number, order_date, cust_id, salesperson_id, amount, 
SUM(amount) OVER(ORDER BY order_date rows between 1 preceding and 1 preceding)
FROM int_orders;


-- LEAD

SELECT order_number, order_date, cust_id, salesperson_id, amount, 
SUM(amount) OVER(ORDER BY order_date rows between 1 following and 1 following)
FROM int_orders;
