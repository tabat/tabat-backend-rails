json.user do
  json.login @user.login
  json.email @user.email
  json.name @user.name
end
