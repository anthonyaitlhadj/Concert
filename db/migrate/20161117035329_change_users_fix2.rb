class ChangeUsersFix2 < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.rename :user_id, :id
    end
  end
end
