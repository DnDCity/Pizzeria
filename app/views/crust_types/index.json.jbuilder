json.array!(@crust_types) do |crust_type|
  json.extract! crust_type, :id, :name, :price_modifier
  json.url crust_type_url(crust_type, format: :json)
end
