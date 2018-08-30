# frozen_string_literal: true

require "rails_helper"

RSpec.feature "StaticPages", type: :feature do
  scenario "successfully load homepage when logged in or anonymous" do
    visit root_path
    expect(current_path).to eql(root_path)
    expect(page).to have_selector("title", text: "carehomely", visible: false)
    visit root_path(as: create(:user))
    expect(current_path).to eql(root_path)
    expect(page).to have_selector("title", text: "carehomely", visible: false)
  end
end
