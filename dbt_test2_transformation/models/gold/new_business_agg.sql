SELECT
    product_id,
    SUM(Profit_INR) AS Total_Profit_Per_Region,
    Region
FROM {{ ref ('transform') }}
GROUP BY product_id , Region
ORDER BY product_id, Region
