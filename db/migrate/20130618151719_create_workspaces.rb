class CreateWorkspaces < ActiveRecord::Migration
  def change
    create_table :workspaces do |t|
      t.string :presentation
      t.string :img_url
      t.string :text
      t.integer :did
      t.integer :distribution_id

      t.timestamps
    end
  end
end
