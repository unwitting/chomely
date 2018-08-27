# frozen_string_literal: true

class Resident < ApplicationRecord
  belongs_to :room
end
