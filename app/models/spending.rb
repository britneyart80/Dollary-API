class Spending < ApplicationRecord
  belongs_to :envelope, inverse_of: :spendings
  belongs_to :category, inverse_of: :spendings
end
