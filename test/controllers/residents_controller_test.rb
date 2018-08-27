require 'test_helper'

class ResidentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resident = residents(:one)
  end

  test "should get index" do
    get residents_url
    assert_response :success
  end

  test "should get new" do
    get new_resident_url
    assert_response :success
  end

  test "should create resident" do
    assert_difference('Resident.count') do
      post residents_url, params: { resident: { dob: @resident.dob, image_url: @resident.image_url, name: @resident.name, room_id: @resident.room_id } }
    end

    assert_redirected_to resident_url(Resident.last)
  end

  test "should show resident" do
    get resident_url(@resident)
    assert_response :success
  end

  test "should get edit" do
    get edit_resident_url(@resident)
    assert_response :success
  end

  test "should update resident" do
    patch resident_url(@resident), params: { resident: { dob: @resident.dob, image_url: @resident.image_url, name: @resident.name, room_id: @resident.room_id } }
    assert_redirected_to resident_url(@resident)
  end

  test "should destroy resident" do
    assert_difference('Resident.count', -1) do
      delete resident_url(@resident)
    end

    assert_redirected_to residents_url
  end
end
