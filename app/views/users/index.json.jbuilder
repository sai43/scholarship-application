json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :created_at, :updated_at, :email, :role, :winner, :scholarship_id
  json.url user_url(user, format: :json)
end
