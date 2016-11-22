class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :comments
      t.string :c_firstname
      t.string :c_lastname
      t.string :contenu
    end
  end
end
