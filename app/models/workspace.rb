class Workspace < ActiveRecord::Base
  attr_accessible :name,:presentation,:img_url,:text ,:workspace_id,:did,:top_client_id,:eid,:pid

  belongs_to :designer,foreign_key: 'did', :autosave => true
  belongs_to :top_client,foreign_key: 'top_client_id', :autosave => true
  belongs_to :event,foreign_key: 'eid', :autosave => true
  belongs_to :partner,foreign_key: 'pid', :autosave => true

  has_and_belongs_to_many :distributions
  association_foreign_key :'workspace_id'

end
