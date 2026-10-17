SELECT
    product_id,
    SUM(Net_Sales_INR) AS Total_Sales_Per_Region,
    Region
FROM {{ ref ('transform') }}
GROUP BY product_id , Region
ORDER BY product_id, Region

