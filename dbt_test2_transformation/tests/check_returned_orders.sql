SELECT *
FROM {{ ref('transform') }}
WHERE TRIM(Returned) != 'Yes'
    OR Order_id IS NULL
    OR Product_id IS NULL