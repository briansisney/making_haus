json.array!(@guests) do |guest|
  json.extract! guest, :id, :user_id, :guest_id, :week_id
  json.url guest_url(guest, format: :json)
end
