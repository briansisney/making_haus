json.array!(@receipts) do |receipt|
  json.extract! receipt, :id, :name, :description, :picture, :email
  json.url receipt_url(receipt, format: :json)
end
