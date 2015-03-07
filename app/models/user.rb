class User < ActiveRecord::Base
  has_many :items
  validates :first_name, :last_name, :password, :email, presence: true
  validates :email, uniqueness: true
  has_secure_password
end
