class AgeGroupEvents < ActiveRecord::Migration[5.2]
  def change
    create_join_table :age_groups, :events do |t|
    end
  end
end
