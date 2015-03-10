class ItemsDeviseuser < ActiveRecord::Base
  belongs_to :deviseuser
  belongs_to :item
end
