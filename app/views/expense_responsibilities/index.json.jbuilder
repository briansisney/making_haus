json.array!(@expense_responsibilities) do |expense_responsibility|
  json.extract! expense_responsibility, :id, :expense_id, :user_id, :amount
  json.url expense_responsibility_url(expense_responsibility, format: :json)
end
