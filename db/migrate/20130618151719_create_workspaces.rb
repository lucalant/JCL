class CreateWorkspaces < ActiveRecord::Migration
  def change
    create_table :workspaces do |t|
      t.string :presentation
      t.string :img_url
      t.string :text
      t.integer :did

      t.timestamps
    end
  end
end
