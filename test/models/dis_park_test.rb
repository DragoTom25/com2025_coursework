require 'test_helper'

class DisParkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should not save empty DisabledParking' do
    dis_park = DisPark.new

    dis_park.save
    refute dis_park.valid?
  end

  test 'should have valid DisabledParking' do
    dis_park = DisPark.new

    dis_park.car_reg = 'HM8G 6ML'
    dis_park.disability = 'Dyslexia'
    dis_park.dname = 'Hannah Wynch'
    dis_park.gender = 'Female'

    dis_park.save
    assert dis_park.valid?

  end

#  test 'should not save duplicate people' do
#    dis_park1.car_reg = 'HM8G 6ML'
#    dis_park1.disability = 'Dyslexia'
#    dis_park1.dname = 'Hannah Wynch'
#    dis_park1.gender = 'Female'
#    dis_park1.save
#    assert dis_park1.valid?

#    dis_park2.car_reg = 'HM8G 6ML'
#    dis_park2.disability = 'Dyslexia'
#    dis_park2.dname = 'Hannah Wynch'
#    dis_park2.gender = 'Female'
#    dis_park2.save
#    refute dis_park2.valid?

#  end
end
