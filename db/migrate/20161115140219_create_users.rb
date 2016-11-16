class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :users
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password
    end
  end
end
