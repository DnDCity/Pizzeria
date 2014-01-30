json.array!(@pizzas) do |pizza|
  json.extract! pizza, :id, :order_id, :quantity, :size_id, :crust_type_id
  json.url pizza_url(pizza, format: :json)
end
