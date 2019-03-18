json.extract! customer, :id, :customer_id, :firstname, :lastname, :address, :city, :country, :phone, :order_history, :order_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
