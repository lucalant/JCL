class Workspace < ActiveRecord::Base
  belongs_to :designer,foreign_key: 'did'

end
