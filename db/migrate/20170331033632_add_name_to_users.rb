class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :nric, :string
    add_column :users, :contact_number, :integer
    add_column :users, :gender, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :address, :string
    add_column :users, :student_status, :string
    add_column :users, :student_school, :string
    add_column :users, :bank_name, :string
    add_column :users, :bank_account_number, :integer
    add_column :users, :colored_hair_status, :string
    add_column :users, :tattoo_status, :string

  end
end
