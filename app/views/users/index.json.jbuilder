json.array!(@users) do |user|
  json.extract! user, :id, :name, :picture, :email, :guest, :shirt_size
  json.url user_url(user, format: :json)
end
