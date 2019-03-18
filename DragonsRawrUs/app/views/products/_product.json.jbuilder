json.extract! product, :id, :product_id, :product_name, :description, :price, :quantity, :prod_order_id, :created_at, :updated_at
json.url product_url(product, format: :json)
