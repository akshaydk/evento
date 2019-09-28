class ChangeEventsColumns < ActiveRecord::Migration[5.2]
  def change
    change_column :event_registrations, :competition_id, :string
    change_column :event_registrations, :user_details_id, :string

    rename_column :event_registrations, :user_details_id, :user_id
  end
end
