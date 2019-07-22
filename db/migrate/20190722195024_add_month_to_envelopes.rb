class AddMonthToEnvelopes < ActiveRecord::Migration[5.2]
  def change
    add_column :envelopes, :month, :smallint
  end
end
