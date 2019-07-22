class AddYearToEnvelopes < ActiveRecord::Migration[5.2]
  def change
    add_column :envelopes, :year, :smallint
  end
end
