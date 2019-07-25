class CreateSpendings < ActiveRecord::Migration[5.2]
  def change
    create_table :spendings do |t|
      t.string :item, null: false
      t.integer :cost, null: false
      t.date :date, null: false
      t.references :envelope, foreign_key: true
      t.references :category, foreign_key: true, null: false

      t.timestamps
    end
  end
end
