WITH F AS (SELECT
    quantity,
    date_date,
    orders_id,
    products_id,
    revenue,
    product.purchase_price,
    quantity*purchase_price AS purchase_cost
FROM {{ ref('stg_raw__sales') }} AS sales
INNER JOIN {{ ref('stg_raw__products') }} AS product
USING (products_id)
)
SELECT*,
ROUND((revenue-purchase_cost),2) AS margin,
FROM F