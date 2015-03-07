class Item < ActiveRecord::Base
  belongs_to :users
  belongs_to :items
  belongs_to :artists
  belongs_to :categories
end
