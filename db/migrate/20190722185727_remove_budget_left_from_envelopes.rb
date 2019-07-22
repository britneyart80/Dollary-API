class RemoveBudgetLeftFromEnvelopes < ActiveRecord::Migration[5.2]
  def change
    remove_column :envelopes, :budget_left, :integer
  end
end
