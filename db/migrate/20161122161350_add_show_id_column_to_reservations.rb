class AddShowIdColumnToReservations < ActiveRecord::Migration[5.0]
  def change
  	add_column :reservations, :show_id, :integer
  end
end
