class DisPark < ApplicationRecord
  validates :car_reg, presence: true
  validates :car_reg, uniqueness: true
end
