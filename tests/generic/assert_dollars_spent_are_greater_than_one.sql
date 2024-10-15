{% test average_dollars_spent_greater_than_one( model, column_name, customer_id) %}

select 
    customer_id,
    avg( {{ column_name }} ) as average_amount

from {{ model }}
group by 1
having average_amount < 1

{% endtest %}