class AddContactsToDistributions < ActiveRecord::Migration
  def change
    add_column :distributions, :contacts, :string
  end
end
