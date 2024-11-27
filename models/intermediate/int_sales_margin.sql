select *,
    round(quantity * purchase_price,2) AS purchase_cost,
    round((revenue - (quantity * purchase_price)),2) AS margin
from {{ ref('stg_raw__sales') }}
JOIN {{ ref('stg_raw__product')}}
USING (products_id)
