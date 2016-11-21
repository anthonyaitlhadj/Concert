class RemoveTwoAttributesToCommentsFix < ActiveRecord::Migration[5.0]
  def change
    remove_column :comments, :c_firstname
    remove_column :comments, :c_lastname
  end
end
