select
    customer_id, 
    sum(amount) as total_payment_amount
from {{ ref('fct_orders') }}
group by 1
having count(customer_id) > 1 and total_payment_amount < 0