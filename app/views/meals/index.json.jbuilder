json.array!(@meals) do |meal|
  json.extract! meal, :id, :name, :meal_date, :week_id
  json.url meal_url(meal, format: :json)
end
