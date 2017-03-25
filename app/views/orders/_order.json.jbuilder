json.extract! order, :id, :customer, :amount, :created_at, :updated_at
json.url order_url(order, format: :json)
