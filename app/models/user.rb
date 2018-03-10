class User < ApplicationRecord
  has_secure_password
  validates_presence_of :first_name, :last_name, :email, :role
  validates_uniqueness_of :email

  enum role: ["admin"]

end
