# frozen_string_literal: true

require "rails_helper"

RSpec.feature "Rooms", type: :feature do
  before(:each) do
    @room = create(:room)
  end

  scenario "redirected when not logged in" do
    visit rooms_path
    expect(current_path).to eql(sign_in_path)
  end

  scenario "get index when logged in" do
    visit rooms_path(as: create(:user))
    expect(current_path).to eql(rooms_path)
    expect(page).to have_selector("title", text: "Rooms | carehomely", visible: false)
  end

  scenario "get show when logged in" do
    visit room_path(@room, as: create(:user))
    expect(current_path).to eql(room_path @room)
    expect(page).to have_selector("title", text: "Roomy | Rooms | carehomely", visible: false)
  end

  scenario "get create when logged in" do
    visit new_room_path(as: create(:user))
    expect(current_path).to eql(new_room_path)
    expect(page).to have_selector("title", text: "Register a new room | carehomely", visible: false)
  end

  scenario "get edit when logged in" do
    visit edit_room_path(@room, as: create(:user))
    expect(current_path).to eql(edit_room_path @room)
    expect(page).to have_selector("title", text: "Edit Roomy | Rooms | carehomely", visible: false)
  end
end
