json.array!(@users) do |user|
  json.extract! user, :id, :name, :login, :pass, :device
  json.url user_url(user, format: :json)
end
