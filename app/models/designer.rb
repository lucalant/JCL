class Designer < ActiveRecord::Base
    has_many :home_product,foreign_key: 'did'
    has_many :workspace, foreign_key: 'did'
    has_and_belongs_to_many :event
    association_foreign_key : 'e_id'

end
