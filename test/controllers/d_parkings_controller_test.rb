require 'test_helper'

class DParkingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @d_parking = d_parkings(:one)
  end

  test "should get index" do
    get d_parkings_url
    assert_response :success
  end

  test "should get new" do
    get new_d_parking_url
    assert_response :success
  end

  test "should create d_parking" do
    assert_difference('DParking.count') do
      post d_parkings_url, params: { d_parking: { car_plate: @d_parking.car_plate, disability: @d_parking.disability, gender: @d_parking.gender, name: @d_parking.name } }
    end

    assert_redirected_to d_parking_url(DParking.last)
  end

  test "should show d_parking" do
    get d_parking_url(@d_parking)
    assert_response :success
  end

  test "should get edit" do
    get edit_d_parking_url(@d_parking)
    assert_response :success
  end

  test "should update d_parking" do
    patch d_parking_url(@d_parking), params: { d_parking: { car_plate: @d_parking.car_plate, disability: @d_parking.disability, gender: @d_parking.gender, name: @d_parking.name } }
    assert_redirected_to d_parking_url(@d_parking)
  end

  test "should destroy d_parking" do
    assert_difference('DParking.count', -1) do
      delete d_parking_url(@d_parking)
    end

    assert_redirected_to d_parkings_url
  end
end
