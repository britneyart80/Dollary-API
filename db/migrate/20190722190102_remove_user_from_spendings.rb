class RemoveUserFromSpendings < ActiveRecord::Migration[5.2]
  def change
    remove_column :spendings, :user_id, :bigint
  end
end
