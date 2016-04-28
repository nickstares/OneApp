class Item < ActiveRecord::Base
  belongs_to :deviseuser, foreign_key: "user_id"
  #belongs_to :items
  belongs_to :artists
  belongs_to :categories

  has_many :items_deviseusers
  has_many :deviseusers, :through => :items_deviseusers

  def self.randomizer
    offset = rand(10)
    rand_record = Item.offset(offset)[0..8]
  end
end
