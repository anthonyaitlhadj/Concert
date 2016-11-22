class RemoveCommentsTableToComments < ActiveRecord::Migration[5.0]
  def change
    remove_column :comments, :comments, :string
  end
end
