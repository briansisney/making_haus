json.array!(@expenses) do |expense|
  json.extract! expense, :id, :name, :amount, :receipt_id, :transaction_date, :user_id, :week_id, :expense_type
  json.url expense_url(expense, format: :json)
end
