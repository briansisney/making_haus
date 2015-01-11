json.array!(@no_lists) do |no_list|
  json.extract! no_list, :id, :name, :user_id
  json.url no_list_url(no_list, format: :json)
end
