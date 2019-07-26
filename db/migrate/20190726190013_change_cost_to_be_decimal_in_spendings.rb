class ChangeCostToBeDecimalInSpendings < ActiveRecord::Migration[5.2]
  def change
    change_column :spendings, :cost, :decimal
  end
end
