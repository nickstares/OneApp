class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :dimensions
      t.string :medium
      t.string :price
      t.integer :artist_id
      t.integer :user_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
