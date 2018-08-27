require 'rails_helper'

RSpec.feature "Rooms", type: :feature do
  scenario "redirected when not logged in" do
    visit rooms_path
    expect(current_path).to eql(sign_in_path)
  end

  scenario "get index when logged in" do
    visit rooms_path(as: create(:user))
    expect(current_path).to eql(rooms_path)
  end
end
