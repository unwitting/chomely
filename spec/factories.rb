# frozen_string_literal: true

FactoryBot.define do
  factory :resident do
    room { Room.first || association(:room) }
    name { "Jane" }
    dob { 50.years.ago }
    bio { "Litora cubilia donec a mauris a netus nostra eu curae condimentum vel venenatis a senectus aliquam orci vestibulum. Dignissim lacus mi cras odio suspendisse adipiscing a blandit vel elit vitae est blandit lacinia ullamcorper ad habitasse parturient nam ad facilisis mus ac. Iaculis laoreet non lacus placerat nascetur massa ac a gravida scelerisque augue lobortis mi himenaeos mollis parturient consectetur. Vestibulum hac sed suspendisse mollis inceptos adipiscing a penatibus penatibus senectus a adipiscing sed leo parturient a consectetur dignissim velit quis vehicula scelerisque non feugiat quis quisque penatibus." }
  end

  factory :room do
    name { "Roomy" }
  end

  factory :user do
    email { "joe@gmail.com" }
    password { "blah" }
  end
end
