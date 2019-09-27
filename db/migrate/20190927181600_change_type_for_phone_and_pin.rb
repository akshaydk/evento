class ChangeTypeForPhoneAndPin < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :phone, :string
    change_column :users, :pin_code, :string

    add_column :users, :occupation, :string
    add_column :users, :district, :string
  end
end
