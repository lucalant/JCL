class Distribution < ActiveRecord::Base
  attr_accessible :name,:presentation,:img_url,:map ,:distribution_id

  has_and_belongs_to_many :home_products , :workspaces
  has_and_belongs_to_many :services
  association_foreign_key :'distribution_id'


end
