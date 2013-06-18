class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :description
      t.string :img_url
      t.string :type

      t.timestamps
    end
  end
end
