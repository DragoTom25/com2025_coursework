require 'test_helper'

class CarsControllerTest < ActionDispatch::IntegrationTest


  setup do                            
    @car = cars(:one)
  end

  test "should get index" do
    get cars_url
    assert_response :success
  end

  test "should get new" do
    get new_car_url
    assert_response :success
  end

  test "should create car" do
    assert_difference('Car.count') do
      post :create, car: { car_brand: @car.car_brand, car_model: @car.car_model, colour: @car.colour, owners_reg: @car.owners_reg, user_id: @car.user_id,  car_plate: @car.car_plate + " create"}
    end

    assert_redirected_to car_url(Car.last)
  end

  test "should get edit" do
    get edit_car_url(@car)
    assert_response :success
  end

  test "should show car" do
    get car_url(@car)
    assert_response :success
  end



  test "should update car" do
    patch car_url(@car), params: { car: { car_brand: @car.car_brand, car_model: @car.car_model, car_plate: @car.car_plate, colour: @car.colour, owners_reg: @car.owners_reg, user_id: @car.user_id } }
    assert_redirected_to car_url(@car)
  end

  test "should destroy car" do
    assert_difference('Car.count', -1) do
      delete car_url(@car)
    end

    assert_redirected_to cars_url
  end
end
