class CreateItemsDeviseusers < ActiveRecord::Migration
  def change
    create_table :items_deviseusers do |t|
      t.references :deviseuser, index: true
      t.references :item, index: true

      t.timestamps null: false
    end
    add_foreign_key :items_deviseusers, :deviseusers
    add_foreign_key :items_deviseusers, :items
  end
end
