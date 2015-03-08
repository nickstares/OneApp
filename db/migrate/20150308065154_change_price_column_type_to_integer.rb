class ChangePriceColumnTypeToInteger < ActiveRecord::Migration
  def up
    change_column :items, :price, :integer
  end

  def down
    change_column :items, :price, :string
  end
end
