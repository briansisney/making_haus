json.array!(@dish_groceries) do |dish_grocery|
  json.extract! dish_grocery, :id, :grocery_item_id, :dish_id
  json.url dish_grocery_url(dish_grocery, format: :json)
end
