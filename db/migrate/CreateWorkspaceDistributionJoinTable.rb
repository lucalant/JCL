class CreateWorkspaceDistributionJoinTable < ActiveRecord :: Migration
  def change
    create_table : workspaces_distributions do |t|
      t.integer :workspace_id
      t.integer :distribution_id
    end
  end
end