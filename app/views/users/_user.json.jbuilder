json.extract! user, :id, :name, :password_digest, :email, :favorite_team, :created_at, :updated_at
json.url user_url(user, format: :json)
