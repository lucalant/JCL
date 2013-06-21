class Designer < ActiveRecord::Base
    attr_accessible :name,:surname,:description, :img_url,:designer_id, :did

    validates :name, :presence => true
    validates :surname, :presence => true
    validates :img_url, :presence => true


    has_many :home_products, :uniq => true
    has_many :workspaces, :uniq => true
    has_and_belongs_to_many :events

end
