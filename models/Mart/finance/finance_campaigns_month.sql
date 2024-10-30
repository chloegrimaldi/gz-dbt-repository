SELECT 
FORMAT_DATE('%Y - %m', date_date)AS datemonth,
SUM(ads_margin) AS ads_margin,
ROUND(SUM(average_basket),2) AS average_basket,
SUM(operational_margin) AS operational_margin,
SUM(ads_cost) AS ads_cost,
SUM(impression) AS impression,
SUM(clicks) AS clicks,
SUM(quantity)AS quantity,
SUM(revenue) AS revenue,
SUM(purchase_cost) AS purchase_cost,
SUM(margin) AS margin,
SUM(shipping_fee) shipping_fee,
SUM(logcost) AS logcost,
SUM(ship_cost) AS ship_cost,
FROM {{ ref('finance_campaigns_day') }}
GROUP BY FORMAT_DATE('%Y - %m', date_date)