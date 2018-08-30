# frozen_string_literal: true

json.extract! room, :id, :name, :created_at, :updated_at
json.url room_url(room, format: :json)
json.residentUrls room.residents.map { |resident| resident_url(resident, format: :json) }
