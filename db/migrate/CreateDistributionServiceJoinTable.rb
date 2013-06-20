class CreateDistributionServiceJoinTable
  def change
    create_table :distributions_services do |t|
      t.integer :service_id
      t.integer :distribution_id
    end
  end
end