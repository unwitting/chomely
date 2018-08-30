# frozen_string_literal: true

require "rails_helper"

RSpec.describe Resident, type: :model do
  scenario "accepts valid name" do
    expect(create(:resident)).to be_valid
    expect(create(:resident, name: "Hello Longish Name")).to be_valid
  end

  scenario "rejects invalid name" do
    expect { create(:resident, name: "") }.to raise_error(ActiveRecord::RecordInvalid)
    expect { create(:resident, name: "ThisislongThisislongThisislongThisislongThisislongThisislongThisislongThisislongThisislongThisislongThisislongThisislongThisislongThisislongThisislongThisislongThisislongThisislong") }.to raise_error(ActiveRecord::RecordInvalid)
  end

  scenario "accepts valid bio" do
    expect(create(:resident)).to be_valid
    expect(create(:resident, bio: "Very short bio, but enough to pass")).to be_valid
  end

  scenario "rejects invalid bio" do
    expect { create(:resident, bio: "Too short") }.to raise_error(ActiveRecord::RecordInvalid)
  end

  scenario "accepts valid dob" do
    expect(create(:resident, dob: "1960-06-01")).to be_valid
    expect(create(:resident, dob: 21.years.ago)).to be_valid
  end

  scenario "rejects dob in future" do
    expect { create(:resident, dob: "3000-01-01") }.to raise_error(ActiveRecord::RecordInvalid)
  end
end
