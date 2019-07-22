class Envelope < ApplicationRecord
  belongs_to :user
  validates :text, :user, presence: true
  has_many :spendings
end
