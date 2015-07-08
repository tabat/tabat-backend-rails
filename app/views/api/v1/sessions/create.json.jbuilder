json.session do
  json.(@user, :id, :name, :email)
  json.token @user.authentication_token
end
