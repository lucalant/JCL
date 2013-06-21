class CreateHomeProductsDistributions < ActiveRecord::Migration
  def change
    create_table :home_products_distributions do |t|
      t.integer :home_product_id
      t.integer :distribution_id

      t.timestamps
    end
  end
end
