class HomeProduct < ActiveRecord::Base
  belongs_to :designer,foreign_key: 'did'
end
