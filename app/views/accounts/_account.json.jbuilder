json.extract! account, :id, :original_value, :open_value, :pay_date, :comments, :account_type, :created_at, :updated_at
json.url account_url(account, format: :json)
