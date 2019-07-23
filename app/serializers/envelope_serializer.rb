class EnvelopeSerializer < ActiveModel::Serializer
  attributes :id, :budget, :budget_left, :month, :year, :spendings
  belongs_to :user
  def budget_left
    result = 0
    object.spendings.each { |spending|
      result += spending.cost
    }
    object.budget - result
  end
end
