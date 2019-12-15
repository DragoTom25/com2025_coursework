require 'test_helper'


class CarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @user = users(:one)
  end

  test 'should not save empty car' do
      cars = Car.new

      cars.save
      refute cars.valid?
  end

  test 'should save valid car' do
    cars = Car.new

    cars.car_plate = 'ISU7 2HU'
    cars.car_brand = 'Ford'
    cars.car_model = 'Fiesta'
    cars.colour = 'Black'
    cars.owners_reg = 'John Smith'
    cars.user_id = @user

    cars.save
    assert cars.valid?

    test 'should not save duplicate car number plate' do

      cars1 = Car.new
      cars1.car_plate = 'ISU7 2HU'
      cars1.car_brand = 'Ford'
      cars1.car_model = 'Fiesta'
      cars1.colour = 'Black'
      cars1.owners_reg = 'John Smith'
      cars1.user_id = @user
      cars1.save
      assert cars.valid?

      cars2 = Cars.new
      cars2.car_plate = 'ISU7 2HU'
      cars2.car_brand = 'Ford'
      cars2.car_model = 'Fiesta'
      cars2.colour = 'Black'
      cars2.owners_reg = 'John Smith'
      cars2.user_id = @user
      cars2.save
      refute cars2.valid?
    end
  end
end
