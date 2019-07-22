# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication

  has_many :envelopes
  has_many :spendings, through: :envelopes
end
