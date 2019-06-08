json.extract! expenditure, :id, :expenditure_type, :value, :comments, :created_at, :updated_at
json.url expenditure_url(expenditure, format: :json)
