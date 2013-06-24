class Distribution < ActiveRecord::Base

  has_and_belongs_to_many :home_products
   has_and_belongs_to_many :workspaces
  has_and_belongs_to_many :services


end
