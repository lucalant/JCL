class CreateDistributions < ActiveRecord::Migration
  def change
    create_table :distributions do |t|
      t.string :presentation
      t.string :img_url
      t.string :map
      t.integer :w_id
      t.integer :hp_id

      t.timestamps
    end
  end
end
