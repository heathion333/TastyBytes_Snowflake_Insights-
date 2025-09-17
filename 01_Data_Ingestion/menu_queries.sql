/* Tasty Bytes – Menu Queries */

-- Total number of menu items
SELECT COUNT(*) AS total_items FROM menu;

-- Top 10 menu items by sale price
SELECT
    menu_item_name,
    sale_price_usd
FROM menu
ORDER BY sale_price_usd DESC
LIMIT 10;

-- Menu items sold by Freezing Point brand
SELECT
    menu_item_name,
    item_category,
    sale_price_usd
FROM menu
WHERE truck_brand_name = 'Freezing Point';

-- Average cost and sale price by item category
SELECT
    item_category,
    ROUND(AVG(cost_of_goods_usd), 2) AS avg_cost,
    ROUND(AVG(sale_price_usd), 2) AS avg_price
FROM menu
GROUP BY item_category
ORDER BY avg_price DESC;

-- Items with profit margin above $5
SELECT
    menu_item_name,
    (sale_price_usd - cost_of_goods_usd) AS profit_usd
FROM menu
WHERE (sale_price_usd - cost_of_goods_usd) > 5
ORDER BY profit_usd DESC;
