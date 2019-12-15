require 'test_helper'

class DisParksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dis_park = dis_parks(:one)
  end

  test "should get index" do
    get dis_parks_url
    assert_response :success
  end

  test "should get new" do
    get new_dis_park_url
    assert_response :success
  end

 #test "should create dis_park" do
  # assert_difference('DisPark.count') do
  #    get dis_park_path, params: {id: "1", disability: "ADHD", dname: "Jane Doe", gender: "Female", car_reg: "JAE0 DEO" }
  #  end

#   assert_redirected_to dis_park_path(assigns(:dis_park))
#  end

  test "should show dis_park" do
    get dis_park_url(@dis_park)
    assert_response :success
  end

  test "should get edit" do
    get edit_dis_park_url(@dis_park)
    assert_response :success
  end

  test "should update dis_park" do
    patch dis_park_url(@dis_park), params: { dis_park: { car_reg: @dis_park.car_reg, disability: @dis_park.disability, dname: @dis_park.dname, gender: @dis_park.gender } }
    assert_redirected_to dis_park_url(@dis_park)
  end

  test "should destroy dis_park" do
    assert_difference('DisPark.count', -1) do
      delete dis_park_url(@dis_park)
    end

    assert_redirected_to dis_parks_url
  end
end
