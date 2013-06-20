class CreateTopCLients < ActiveRecord::Migration
  def change
    create_table :top_c_lients do |t|
      t.string :name
      t.string :surname
      t.string :img_url
      t.string :about
      t.integer :top_client_id

      t.timestamps
    end
  end
end
