class AddShowIdfkToComments < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key(:comments, :shows, dependant: :delete)
  end
end
