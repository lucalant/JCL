class Designer < ActiveRecord::Base

    attr_accessible :name,:surname,:description, :img_url,:designer_id

    has_many :home_product,foreign_key: 'did'
    has_many :workspace, foreign_key: 'did'
    has_and_belongs_to_many :event
    association_foreign_key :'designer_id'

end
