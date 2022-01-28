class RemoveUsersFromComments < ActiveRecord::Migration[7.0]
  def change
    remove_reference :comments, :users, null: false, foreign_key: true
  end
end
