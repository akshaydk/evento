class AgeGroupDisciplines < ActiveRecord::Migration[5.2]
  def change
    create_table :age_group_disciplines, :id => false do |t|
      t.integer :age_group_id
      t.integer :discipline_id
    end
  end
end
