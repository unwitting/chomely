# frozen_string_literal: true

json.extract! resident, :id, :name, :dob, :room_id, :created_at, :updated_at
json.url resident_url(resident, format: :json)
