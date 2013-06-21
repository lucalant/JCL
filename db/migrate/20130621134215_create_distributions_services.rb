class CreateDistributionsServices < ActiveRecord::Migration
  def change
    create_table :distributions_services do |t|
      t.integer :service_id
      t.integer :distribution_id

      t.timestamps
    end
  end
end
