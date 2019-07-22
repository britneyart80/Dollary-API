class Envelope < ApplicationRecord
  belongs_to :user
  has_many :spendings, dependent: :destroy
end
