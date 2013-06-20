class Event < ActiveRecord::Base
  attr_accessible :about,:video, :image_url,:event_id


  has_and_belongs_to_many :designer
  association_foreign_key :'event_id'
end
