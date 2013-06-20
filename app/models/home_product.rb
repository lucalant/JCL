class HomeProduct < ActiveRecord::Base
  attr_accessible :name,:introduction,:images,:text ,:home_product_id  ,:did,:top_client_id


  belongs_to :designer,foreign_key: 'did',:autosave => true
  belongs_to :top_client,foreign_key: 'top_client_id',:autosave => true

  has_and_belongs_to_many :distributions
  association_foreign_key :'home_product_id'
end
