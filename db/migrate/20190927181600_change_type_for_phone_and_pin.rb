class ChangeTypeForPhoneAndPin < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :phone, :string
    change_column :users, :pin_code, :string

    add_column :users, :occupation, :string
    add_column :users, :district, :string
  end

  def down
    remove_column :users, :district
    remove_column :users, :occupation

    change_column :users, :pin_code, :integer
    change_column :users, :phone, :integer
  end
end
