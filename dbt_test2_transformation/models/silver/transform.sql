SELECT 

    order_id,
    customer_id,
    order_date,
    product_id,
    quantity,
    Unit_Price_INR,
    Net_Sales_INR,
    UPPER(TRIM(Payment_Method)) AS Payment_Method,
    Region,
    City,
    Returned

FROM {{ source('raw' , 'sales_data') }}
WHERE TRIM(Returned) = 'Yes'