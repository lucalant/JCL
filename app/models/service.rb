class Service < ActiveRecord::Base
  attr_accessible :name,:description,:img_url,:type ,:service_id

  has_and_belongs_to_many :distributions

end
