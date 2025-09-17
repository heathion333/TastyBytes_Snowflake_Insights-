/* Tasty Bytes – Profit Analysis & Ingredient Extraction */

-- Profit margin for all menu items
SELECT
    menu_item_name,
    sale_price_usd,
    cost_of_goods_usd,
    (sale_price_usd - cost_of_goods_usd) AS profit_usd
FROM menu
ORDER BY profit_usd DESC;

-- Profit margin for Freezing Point brand
SELECT
    menu_item_name,
    sale_price_usd,
    cost_of_goods_usd,
    (sale_price_usd - cost_of_goods_usd) AS profit_usd
FROM menu
WHERE truck_brand_name = 'Freezing Point'
ORDER BY profit_usd DESC;

-- Profit on Mango Sticky Rice
SELECT
    menu_item_name,
    (sale_price_usd - cost_of_goods_usd) AS profit_usd
FROM menu
WHERE truck_brand_name = 'Freezing Point'
  AND menu_item_name = 'Mango Sticky Rice';

-- Extract ingredients from
