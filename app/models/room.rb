# frozen_string_literal: true

class Room < ApplicationRecord
  has_many :residents, dependent: :restrict_with_exception
end
