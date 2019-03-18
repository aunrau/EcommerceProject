json.extract! order, :id, :order_id, :order_date, :order_status, :order_total, :order_details, :customer_id, :prod_order_id, :created_at, :updated_at
json.url order_url(order, format: :json)
