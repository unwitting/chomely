require 'rails_helper'

RSpec.describe Room, type: :model do
  scenario "accepts valid name" do
    expect(Room.new(name: 'A')).to be_valid
    expect(Room.new(name: 'Penthouse')).to be_valid
  end

  scenario "rejects invalid name" do
    expect(Room.new).to_not be_valid
    expect(Room.new(name: '')).to_not be_valid
    expect(Room.new(name: 'ThisislongThisislongThisislongThisislongThisislongThisislong')).to_not be_valid
  end
end
