class Event < ActiveRecord::Base
  attr_accessible :about,:video, :image_url,:event_id

  has_many :home_products,:workspaces ,:uniq => true
  has_and_belongs_to_many :designers
  association_foreign_key :'event_id'
end
