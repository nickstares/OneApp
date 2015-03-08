class RemovePriceFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :price, :string
  end
end
