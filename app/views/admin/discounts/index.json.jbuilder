json.array!(@admin_discounts) do |admin_discount|
  json.extract! admin_discount, :id, :started_at, :ended_at, :title, :description, :variant, :amount
  json.url admin_discount_url(admin_discount, format: :json)
end
