class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :about
      t.text :video
      t.string :img_url

      t.timestamps
    end
  end
end
