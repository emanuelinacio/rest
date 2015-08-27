json.array!(@users) do |user|
  json.extract! user, :id, :name, :login, :pass
  json.url user_url(user, format: :json)
end
