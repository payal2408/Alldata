json.extract! plan, :id, :plan_name, :plan_description, :plan_amount, :created_at, :updated_at
json.url plan_url(plan, format: :json)
