class AddPseudoColumnToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :pseudo, :string
  end
end
