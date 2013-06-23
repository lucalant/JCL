class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :text
      t.string :img_url

      t.timestamps
    end
  end
end
