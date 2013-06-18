class CreateHomeProducts < ActiveRecord::Migration
  def change
    create_table :home_products do |t|
      t.string :images
      t.string :text
      t.string :introduction

      t.timestamps
    end
  end
end
