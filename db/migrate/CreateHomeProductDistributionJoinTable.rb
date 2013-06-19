class CreateHomeProductDistributionJoinTable < ActiveRecord :: Migration
  def change
    create_table : homeProducts_distributions do |t|
      t.integer :e_id
      t.integer :d_id
    end
  end
end