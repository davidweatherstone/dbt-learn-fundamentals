select
    {{ cents_to_dollars('amount', 4) }} as amount,
    created as created_date,
    id as customer_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    _batched_at
from {{ source('stripe', 'payment') }}