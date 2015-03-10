class Item < ActiveRecord::Base
  belongs_to :items
  belongs_to :artists
  belongs_to :categories
end
