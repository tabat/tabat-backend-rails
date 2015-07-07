module User::Authentication
  extend ActiveSupport::Concern
  included do
    # do something when the module is included
    attr_accessor :password, :password_confirmation

    before_save :encrypt_password
  end
  module ClassMethods
  end

  def encrypt_password
    self.encrypted_password = Digest::SHA1.hexdigest(["asdfa2q52354fh45", password].flatten.join('--'))
  end
end
