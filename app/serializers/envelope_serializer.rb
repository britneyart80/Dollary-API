class EnvelopeSerializer < ActiveModel::Serializer
  attributes :id, :budget, :budget_left, :month, :spendings
  def budget_left
    result = 0
    object.spendings.each { |spending|
      result += spending.cost
    }
    object.budget - result
  end
  belongs_to :user, inverse_of: :envelopes
end
