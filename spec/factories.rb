# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { "joe@gmail.com" }
    password { "blah" }
  end
end
