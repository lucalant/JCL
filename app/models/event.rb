class Event < ActiveRecord::Base


  has_many :home_products ,:uniq => true
   has_many :workspaces ,:uniq => true
  has_and_belongs_to_many :designers

end
