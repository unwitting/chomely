# frozen_string_literal: true

json.array! @residents, partial: "residents/resident", as: :resident
