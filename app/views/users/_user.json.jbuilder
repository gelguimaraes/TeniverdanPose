json.extract! user, :id, :id, :nome, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
