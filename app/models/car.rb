class Car < ApplicationRecord
  validates :car_plate, presence: true
  validates :car_plate, uniqueness: true
  validates :user_id, presence: true
end
