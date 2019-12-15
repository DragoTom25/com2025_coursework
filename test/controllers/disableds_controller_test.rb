require 'test_helper'

class DisabledsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disabled = disableds(:one)
  end

  test "should get index" do
    get disableds_url
    assert_response :success
  end

  test "should get new" do
    get new_disabled_url
    assert_response :success
  end

  test "should create disabled" do
    assert_difference('Disabled.count') do
      post disableds_url, params: { disabled: { car_plate: @disabled.car_plate, disability: @disabled.disability, gender: @disabled.gender, name: @disabled.name } }
    end

    assert_redirected_to disabled_url(Disabled.last)
  end

  test "should show disabled" do
    get disabled_url(@disabled)
    assert_response :success
  end

  test "should get edit" do
    get edit_disabled_url(@disabled)
    assert_response :success
  end

  test "should update disabled" do
    patch disabled_url(@disabled), params: { disabled: { car_plate: @disabled.car_plate, disability: @disabled.disability, gender: @disabled.gender, name: @disabled.name } }
    assert_redirected_to disabled_url(@disabled)
  end

  test "should destroy disabled" do
    assert_difference('Disabled.count', -1) do
      delete disabled_url(@disabled)
    end

    assert_redirected_to disableds_url
  end
end
