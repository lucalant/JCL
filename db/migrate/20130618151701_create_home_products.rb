class CreateHomeProducts < ActiveRecord::Migration
  def change
    create_table :home_products do |t|
      t.string :images
      t.string :text
      t.string :introduction
      t.integer :did
      t.integer :home_product_id
      t.string :room
      t.string :name
      t.boolean :top
      t.string :type

      t.timestamps
    end
  end
end
