# frozen_string_literal: true

require "rails_helper"

RSpec.feature "Sessions", type: :feature do
  scenario "redirected from sign in to root when logged in" do
    visit sign_in_path(as: create(:user))
    expect(current_path).to eql(root_path)
  end

  scenario "successfully load sign in page when not logged in" do
    visit sign_in_path
    expect(current_path).to eql(sign_in_path)
    expect(page).to have_selector("title", text: "Admin sign in | carehomely", visible: false)
  end

  scenario "successfully load sign up page when not logged in" do
    visit sign_up_path
    expect(current_path).to eql(sign_up_path)
    expect(page).to have_selector("title", text: "Register a new admin user | carehomely", visible: false)
  end
end
