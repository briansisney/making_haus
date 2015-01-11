json.array!(@grocery_units) do |grocery_unit|
  json.extract! grocery_unit, :id, :name
  json.url grocery_unit_url(grocery_unit, format: :json)
end
