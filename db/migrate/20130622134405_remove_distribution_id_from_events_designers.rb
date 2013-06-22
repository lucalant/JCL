class RemoveDistributionIdFromEventsDesigners < ActiveRecord::Migration
  def change
    remove_column :events_designers, :distribution_id, :integer
  end
end
