class AddUserToEnvelopes < ActiveRecord::Migration[5.2]
  def change
    add_reference :envelopes, :user, foreign_key: true
  end
end
