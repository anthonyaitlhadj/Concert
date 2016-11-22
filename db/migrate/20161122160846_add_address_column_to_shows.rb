class AddAddressColumnToShows < ActiveRecord::Migration[5.0]
  def change
    add_column :shows, :adress, :string
  end
end
