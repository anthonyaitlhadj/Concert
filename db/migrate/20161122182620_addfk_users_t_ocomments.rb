class AddfkUsersTOcomments < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key(:comments, :users, dependant: :delete)
  end
end
