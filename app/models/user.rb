class User < ActiveRecord::Base
  has_secure_password

  before_create :generate_tokens

  def generate_tokens
    generate_authentication_token
    generate_activation_code
  end
  
  def generate_authentication_token
    loop do
      self.authentication_token = SecureRandom.base64(64)
      break unless User.find_by(authentication_token: authentication_token)
    end
  end

  def generate_activation_code
    self.activation_code = SecureRandom.base64(20)
  end

end
