class AddAdminColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin, :int
  end
end