# frozen_string_literal: true

class Resident < ApplicationRecord
  belongs_to :room
  validates :name, length: { in: 1..150 }
  validates :bio, length: { in: 10..1000 }
  validate :dob_not_in_future

  private
    def dob_not_in_future
      if dob >= Date.today
        errors.add :dob, "must be in the past"
      end
    end
end
