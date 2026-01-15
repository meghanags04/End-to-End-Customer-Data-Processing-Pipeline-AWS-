SELECT city, COUNT(*) AS customer_count
FROM customers_csv_txt
GROUP BY city
ORDER BY customer_count DESC;
