class Designer < ActiveRecord::Base

    attr_accessible :name,:surname,:description, :img_url,:designer_id,:did

    has_many :home_products, :uniq => true
    has_many :workspaces, :uniq => true
    has_and_belongs_to_many :events
    association_foreign_key :'designer_id'

end
