json.user do
  json.(@user, :id, :email, :auth)
end
json.token(Auth.create_token(@user.id))
