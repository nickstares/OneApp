class ChangePriceColumnTypeToInteger2 < ActiveRecord::Migration
  def change
   change_column :items, :price, 'integer USING CAST(price AS integer)'
  end
end
