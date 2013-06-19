class CreateWorkspaceDistributionJoinTable < ActiveRecord :: Migration
  def change
    create_table : workspaces_distributions do |t|
      t.integer :e_id
      t.integer :d_id
    end
  end
end