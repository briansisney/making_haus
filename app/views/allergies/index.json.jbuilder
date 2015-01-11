json.array!(@allergies) do |allergy|
  json.extract! allergy, :id, :name, :description
  json.url allergy_url(allergy, format: :json)
end
