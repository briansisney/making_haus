json.array!(@user_allergies) do |user_allergy|
  json.extract! user_allergy, :id, :user_id, :allergy_id
  json.url user_allergy_url(user_allergy, format: :json)
end
