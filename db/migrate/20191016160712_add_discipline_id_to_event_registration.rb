class AddDisciplineIdToEventRegistration < ActiveRecord::Migration[5.2]
  def change
    add_column :event_registrations, :discipline_id, :string
  end
end
