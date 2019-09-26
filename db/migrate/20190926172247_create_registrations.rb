class CreateRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :registrations do |t|
      t.integer :competition_id,               null: false
      t.integer :user_details_id,              null: false
      t.string :events,                        null: false
    end
  end
end
