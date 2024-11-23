select 
    orders_id,
    date_date,
    round((margin + shipping_fee - logcost - ship_cost),2) as operational_margin,
    quantity,
    revenue,
    purchase_cost,
    margin,
    shipping_fee,
    logcost,
    ship_cost
    
from {{ref('int_orders_margin')}}
JOIN {{ref('stg_raw__ship')}}
USING (orders_id)