class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.string :firstname
      t.string :lastname
      t.string :email
      t.integer :nb_tickets
    end
  end
end
