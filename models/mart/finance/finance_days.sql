select 
    date_date,
    count(orders_id) as nb_transactions,
    round(sum(revenue),2) as revenue,
    round(avg(revenue),2) as average_basket,
    round(sum(margin),2) as margin,
    round(sum(operational_margin),2) as total_operational_margin,
    round(sum(purchase_cost),2) as total_purchase_costs,
    round(sum(shipping_fee),2) as total_shipping_fees,
    round(sum(logcost),2) as total_log_costs,
    sum(ship_cost) as total_ship_costs,
    sum(quantity) as total_quantity_of_products_sold,
from {{ref ('int_orders_operational')}}
group by date_date
order by date_date desc