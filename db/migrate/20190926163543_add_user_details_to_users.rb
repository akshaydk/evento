class AddUserDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :full_name, :string
    add_column :users, :dob, :date
    add_column :users, :gender, :string
    add_column :users, :phone, :integer
    add_column :users, :address, :text
    add_column :users, :city, :string
    add_column :users, :pin_code, :integer
    add_column :users, :rsfi_id, :string
  end
end
