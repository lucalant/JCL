class HomeProduct < ActiveRecord::Base
  attr_accessible :name,:introduction,:images,:text ,:home_product_id


  belongs_to :designer,foreign_key: 'did'
  has_and_belongs_to_many :distribution
  association_foreign_key :'home_product_id'
end
