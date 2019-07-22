class RemoveMonthFromEnvelopes < ActiveRecord::Migration[5.2]
  def change
    remove_column :envelopes, :month, :integer
  end
end
