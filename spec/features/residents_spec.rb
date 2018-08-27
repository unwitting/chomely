# frozen_string_literal: true

require "rails_helper"

RSpec.feature "Residents", type: :feature do
  scenario "redirected when not logged in" do
    visit residents_path
    expect(current_path).to eql(sign_in_path)
  end

  scenario "get index when logged in" do
    visit residents_path(as: create(:user))
    expect(current_path).to eql(residents_path)
  end
end
