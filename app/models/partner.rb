class Partner < ActiveRecord::Base
attr_accessible :name,:description, :img_url,:partner_id,:contact

has_many :home_products,:workspaces ,:uniq => true
end
