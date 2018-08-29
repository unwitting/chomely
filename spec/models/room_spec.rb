# frozen_string_literal: true

require "rails_helper"

RSpec.describe Room, type: :model do
  scenario "accepts valid name" do
    expect(create(:room)).to be_valid
    expect(create(:room, name: "Penthouse")).to be_valid
  end

  scenario "rejects invalid name" do
    expect { create(:room, name: "") }.to raise_error(ActiveRecord::RecordInvalid)
    expect { create(:room, name: "ThisislongThisislongThisislongThisislongThisislongThisislong") }.to raise_error(ActiveRecord::RecordInvalid)
  end
end
