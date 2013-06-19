class Event < ActiveRecord::Base
  attr_accessible :about,:video, :image_url,:d_id


  has_and_belongs_to_many :designer
  association_foreign_key : 'd_id'
end
