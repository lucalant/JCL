class Workspace < ActiveRecord::Base
  attr_accessible :name,:presentation,:img_url,:text ,:workspace_id,:distribution_id

  belongs_to :designer,foreign_key: 'did'

  has_and_belongs_to_many :distribution
  association_foreign_key : 'distribution_id'

end
