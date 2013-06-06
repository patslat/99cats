class User < ActiveRecord::Base
  attr_accessible :password, :token, :username

  validates :password, :username, :presence => true
  validates :password, :username, :uniqueness => true

  def verify_password?(password)
    self.password == password
  end

  def set_token
    self.token = SecureRandom::base64(16)
  end
end
