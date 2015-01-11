json.array!(@grocery_items) do |grocery_item|
  json.extract! grocery_item, :id, :ingredient_id, :amount, :grocery_unit_id
  json.url grocery_item_url(grocery_item, format: :json)
end
