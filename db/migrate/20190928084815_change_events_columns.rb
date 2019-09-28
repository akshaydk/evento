class ChangeEventsColumns < ActiveRecord::Migration[5.2]
  def up
    change_column :event_registrations, :competition_id, :string
    change_column :event_registrations, :user_details_id, :string

    rename_column :event_registrations, :user_details_id, :user_id
  end

  def down
    rename_column :event_registrations, :user_id, :user_details_id

    change_column :event_registrations, :user_details_id, :integer 
    change_column :event_registrations, :competition_id, :integer
  end
end
