class AddShowIdToComments < ActiveRecord::Migration[5.0]
  def change
  	add_column :comments, :show_id, :integer
  end
end
