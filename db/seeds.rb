# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

car_detail = Cars.where(car_plate: 'LS61 VLO').first
car_detail.delete if car_detail

cars = Cars.create([car_plate: 'LS61 VLO', car_brand: 'Nissan', car_model: 'Micra', colour: 'Red', owners_reg: 'Thomas Ma'])
