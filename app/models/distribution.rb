class Distribution < ActiveRecord::Base
  attr_accessible :name,:presentation,:img_url,:map ,:w_id,:hp_id

  has_and_belongs_to_many :home_product
  association_foreign_key : 'hp_id'


end
