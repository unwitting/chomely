# frozen_string_literal: true

FactoryBot.define do
  factory :room do
    name { "Room" }
  end

  factory :user do
    email { "joe@gmail.com" }
    password { "blah" }
  end
end
