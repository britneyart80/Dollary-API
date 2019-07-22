class CreateSpendings < ActiveRecord::Migration[5.2]
  def change
    create_table :spendings do |t|
      t.string :item
      t.integer :cost
      t.date :date
      t.references :envelope, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
