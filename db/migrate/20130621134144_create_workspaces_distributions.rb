class CreateWorkspacesDistributions < ActiveRecord::Migration
  def change
    create_table :workspaces_distributions do |t|
      t.integer :workspace_id
      t.string :distribution_id

      t.timestamps
    end
  end
end
