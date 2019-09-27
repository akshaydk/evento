class CreateEventRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :event_registrations do |t|

      t.integer :competition_id
      t.integer :user_details_id
      t.string :events
      t.timestamps
    end
  end
end
