class CreateEventsDesigners < ActiveRecord::Migration
  def change
    create_table :events_designers do |t|
      t.integer :event_id
      t.integer :distribution_id

      t.timestamps
    end
  end
end
