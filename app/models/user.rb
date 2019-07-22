# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :spendings, through: :envelopes
  has_many :envelopes
end
