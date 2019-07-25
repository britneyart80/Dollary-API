class CreateEnvelopes < ActiveRecord::Migration[5.2]
  def change
    create_table :envelopes do |t|
      t.integer :budget, null: false
      t.integer :budget_left
      t.integer :month, null: false

      t.timestamps
    end
  end
end
