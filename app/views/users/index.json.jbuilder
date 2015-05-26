json.array!(@users) do |user|
  json.extract! user, :id, :name, :gravatar, :bio, :verified, :role
  json.url user_url(user, format: :json)
end
