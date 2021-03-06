# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Seed to help populate my models
car_detail = Car.where(car_plate: 'LS61 VLO').first
car_detail.delete if car_detail

cars = Car.create([user_id: '1', car_plate: 'LS61 VLO', car_brand: 'Nissan', car_model: 'Micra', colour: 'Red', owners_reg: 'Thomas Ma'])

d_park = Dis_Park.where(car_reg: 'BSH8 HSY').first
d_park.delete if d_park

dis_parks = Dis_Park.create([car_reg: 'BSH8 HSY', disability: 'ADHD', dname: 'Sam Yohan', gender: 'Male'])
