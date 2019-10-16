class CreateCompetitions < ActiveRecord::Migration[5.2]
  def change
    create_table :competitions do |t|
      t.string :name
      t.date :reg_open
      t.date :reg_close
      t.date :comp_start
      t.date :comp_end_date

      t.timestamps
    end
  end
end
