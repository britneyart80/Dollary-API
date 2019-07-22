class Spending < ApplicationRecord
  belongs_to :envelope
  belongs_to :category
end
