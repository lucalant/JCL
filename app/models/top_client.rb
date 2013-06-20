class TopClient < ActiveRecord::Base
  attr_accessible :name,:surname,:img_url,:about ,:top_client_id

  has_many :home_products, :uniq => true
  has_many :workspaces, :uniq => true


end
