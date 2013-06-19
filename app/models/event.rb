class Event < ActiveRecord::Base
  has_and_belongs_to_many :designer
  association_foreign_key : 'd_id'
end
