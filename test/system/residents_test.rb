require "application_system_test_case"

class ResidentsTest < ApplicationSystemTestCase
  setup do
    @resident = residents(:one)
  end

  test "visiting the index" do
    visit residents_url
    assert_selector "h1", text: "Residents"
  end

  test "creating a Resident" do
    visit residents_url
    click_on "New Resident"

    fill_in "Dob", with: @resident.dob
    fill_in "Image Url", with: @resident.image_url
    fill_in "Name", with: @resident.name
    fill_in "Room", with: @resident.room_id
    click_on "Create Resident"

    assert_text "Resident was successfully created"
    click_on "Back"
  end

  test "updating a Resident" do
    visit residents_url
    click_on "Edit", match: :first

    fill_in "Dob", with: @resident.dob
    fill_in "Image Url", with: @resident.image_url
    fill_in "Name", with: @resident.name
    fill_in "Room", with: @resident.room_id
    click_on "Update Resident"

    assert_text "Resident was successfully updated"
    click_on "Back"
  end

  test "destroying a Resident" do
    visit residents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resident was successfully destroyed"
  end
end
