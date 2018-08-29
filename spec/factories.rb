# frozen_string_literal: true

FactoryBot.define do
  factory :resident do
    room { Room.first || association(:room) }
    name { "Jane" }
    dob { 50.years.ago }
  end

  factory :room do
    name { "Roomy" }
  end

  factory :user do
    email { "joe@gmail.com" }
    password { "blah" }
  end
end
