# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :envelopes, dependent: :destroy
  has_many :spendings, through: :envelopes, dependent: :destroy
end
