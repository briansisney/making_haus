json.array!(@payments) do |payment|
  json.extract! payment, :id, :date_completed, :amount, :platform, :actor_id, :target_id, :reproter_id
  json.url payment_url(payment, format: :json)
end
