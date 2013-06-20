class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.text :description
      t.string :img_url
      t.string :contact
      t.integer :partner_id

      t.timestamps
    end
  end
end
