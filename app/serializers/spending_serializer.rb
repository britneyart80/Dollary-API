class SpendingSerializer < ActiveModel::Serializer
  attributes :id, :item, :cost, :date
  belongs_to :envelope, inverse_of: :spendings
  belongs_to :category, inverse_of: :spendings
end
