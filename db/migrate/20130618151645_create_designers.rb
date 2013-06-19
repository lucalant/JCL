class CreateDesigners < ActiveRecord::Migration
  def change
    create_table :designers do |t|
      t.string :name
      t.string :surname
      t.text :description
      t.string :img_url
      t.integer :home_product_id
      t.integer :workspace_id

      t.timestamps
    end
  end
end
