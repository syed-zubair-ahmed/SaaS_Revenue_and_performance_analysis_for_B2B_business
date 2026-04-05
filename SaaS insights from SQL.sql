-- 1. Overall Business Performance (Baseline)
SELECT 
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS overall_margin
FROM saas_sales_data;


-- 2. Product Profitability Ranking
SELECT 
    Product,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS margin
FROM saas_sales_data
GROUP BY Product
ORDER BY total_profit ASC;


-- 3. Product × Segment Loss Detection
SELECT 
    Product, 
    Segment, 
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(AVG(Discount), 2) AS avg_discount,
    COUNT(*) AS transaction_count
FROM saas_sales_data
GROUP BY Product, Segment
HAVING SUM(Profit) < 0
ORDER BY total_profit ASC;


-- 4. Discount Threshold Analysis (Core Insight)
SELECT 
    CASE 
        WHEN Discount = 0 THEN '0%'
        WHEN Discount <= 0.2 THEN '0-20%'
        WHEN Discount <= 0.4 THEN '20-40%'
        WHEN Discount <= 0.6 THEN '40-60%'
        ELSE '60%+'
    END AS discount_bucket,

    COUNT(*) AS transactions,
    ROUND(AVG(Profit), 2) AS avg_profit,
    ROUND(AVG(`Profit Margin`), 2) AS avg_margin

FROM saas_sales_data
GROUP BY discount_bucket
ORDER BY discount_bucket;


-- 5. Product × Discount Interaction
SELECT 
    Product,
    CASE 
        WHEN Discount <= 0.2 THEN 'Low'
        WHEN Discount <= 0.5 THEN 'Medium'
        ELSE 'High'
    END AS discount_level,

    ROUND(AVG(Profit), 2) AS avg_profit

FROM saas_sales_data
GROUP BY Product, discount_level;


-- 6. Customer Loss Ranking (Window Function)
SELECT 
    Customer, 
    Industry, 
    SUM(Profit) AS total_profit,
    RANK() OVER (ORDER BY SUM(Profit) ASC) AS loss_rank
FROM saas_sales_data
GROUP BY Customer, Industry
LIMIT 10;


-- 7. Unit Economics (Efficiency Layer)
SELECT 
    Product,
    ROUND(AVG(Sales / Quantity), 2) AS avg_unit_price,
    ROUND(AVG(Profit / Quantity), 2) AS profit_per_unit
FROM saas_sales_data
GROUP BY Product;