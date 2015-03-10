class Deviseuser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :invitable
  has_many :items, foreign_key: "user_id"

  has_many :items_deviseusers
  has_many :likes, :through => :items_deviseusers, source: :item

end
