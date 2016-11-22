class AddPriceColumnToShows < ActiveRecord::Migration[5.0]
  def change
    add_column :shows, :price, :string
  end
end
