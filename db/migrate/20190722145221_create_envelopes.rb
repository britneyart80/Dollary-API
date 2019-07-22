class CreateEnvelopes < ActiveRecord::Migration[5.2]
  def change
    create_table :envelopes do |t|
      t.integer :budget
      t.integer :budget_left
      t.integer :month

      t.timestamps
    end
  end
end
