class AddUserToSpendings < ActiveRecord::Migration[5.2]
  def change
    add_reference :spendings, :user, foreign_key: true
  end
end
