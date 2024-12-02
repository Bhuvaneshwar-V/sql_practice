use org;

create table products ( product_id varchar(20), cost int);

insert into products values ('P1', 200), ('P2', 300), ('P3', 300), ('P4', 500), ('P5', 800);

SELECT * FROM products;

-- running sum

SELECT *, SUM(cost) OVER(ORDER BY COST)
FROM products;

-- running sum problem

SELECT *, SUM(cost) OVER(ORDER BY COST, product_id)
FROM products;

-- same without order by
SELECT *, SUM(cost) OVER(ORDER BY COST rows between unbounded preceding and current row)
FROM products;
