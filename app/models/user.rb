class User < ActiveRecord::Base
  # authenticate via login/name and password
  include User::Authentication
  
end
