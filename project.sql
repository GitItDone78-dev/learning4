select * from sales;
select * from products;
select * from customers;
SELECT p.product_name, SUM(s.total_price) AS total_sales
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC;
SELECT c.name, SUM(s.total_price) AS total_spent
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.name
ORDER BY total_spent DESC;
SELECT DATE_FORMAT(s.sale_date, '%Y-%m') AS month, SUM(s.total_price) AS total_sales
FROM sales s
GROUP BY month
ORDER BY month;
select p.category,sum(s.total_price) as total_revenue from sales s join products p ON s.product_id = p.product_id group by p.category order by total_revenue desc; 
