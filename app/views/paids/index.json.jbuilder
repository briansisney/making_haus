json.array!(@paids) do |paid|
  json.extract! paid, :id, :date_completed, :amount, :platform, :actor_id, :target_id, :reproter_id
  json.url paid_url(paid, format: :json)
end
