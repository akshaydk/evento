class AgeGroupDisciplines < ActiveRecord::Migration[5.2]
  def change
    create_join_table :age_groups, :disciplines do |t|
    end
  end
end
