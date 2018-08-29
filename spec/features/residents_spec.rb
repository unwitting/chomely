# frozen_string_literal: true

require "rails_helper"

RSpec.feature "Residents", type: :feature do
  before(:each) do
    @resident = create(:resident)
  end

  scenario "redirected when not logged in" do
    visit residents_path
    expect(current_path).to eql(sign_in_path)
  end

  scenario "get index when logged in" do
    visit residents_path(as: create(:user))
    expect(current_path).to eql(residents_path)
    expect(page).to have_selector('title', text: 'Residents | carehomely', visible: false)
  end

  scenario "get show when logged in" do
    visit resident_path(@resident, as: create(:user))
    expect(current_path).to eql(resident_path @resident)
    expect(page).to have_selector('title', text: 'Jane | Residents | carehomely', visible: false)
  end

  scenario "get create when logged in" do
    visit new_resident_path(as: create(:user))
    expect(current_path).to eql(new_resident_path)
    expect(page).to have_selector('title', text: 'Add a new resident | carehomely', visible: false)
  end

  scenario "get edit when logged in" do
    visit edit_resident_path(@resident, as: create(:user))
    expect(current_path).to eql(edit_resident_path @resident)
    expect(page).to have_selector('title', text: 'Edit Jane | Residents | carehomely', visible: false)
  end
end
