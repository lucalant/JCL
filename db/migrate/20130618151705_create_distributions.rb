class CreateDistributions < ActiveRecord::Migration
  def change
    create_table :distributions do |t|
      t.string :presentation
      t.string :img_url
      t.string :map

      t.timestamps
    end
  end
end
