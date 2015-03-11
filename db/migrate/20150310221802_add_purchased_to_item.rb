class AddPurchasedToItem < ActiveRecord::Migration
  def change
   add_column :items, :purchased_date, :datetime
  end
end
