class CreateEventDesignerJointTable < ActiveRecord :: Migration
  def change
    create_table : events_designers do |t|
      t.integer :e_id
      t.integer :d_id
    end
  end
end