class Car < ApplicationRecord
  validates :car_plate, presence: true
  validates :car_plate, uniqueness: true
end
