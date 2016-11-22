class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
      t.string :concerts
      t.string :concertname
      t.string :date
      t.integer :places
    end
  end
end
