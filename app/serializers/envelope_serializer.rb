class EnvelopeSerializer < ActiveModel::Serializer
  attributes :id, :budget, :budget_left, :month, :year, :spendings
  belongs_to :user
  def budget_left
    if object.budget == nil
      0
    else
      result = 0
      object.spendings.each { |spending|
        result += spending.cost
      }
      object.budget - result
    end
  end
end
