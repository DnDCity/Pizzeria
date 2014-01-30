json.array!(@orders) do |order|
  json.extract! order, :id, :customer_name, :total, :status
  json.url order_url(order, format: :json)
end
