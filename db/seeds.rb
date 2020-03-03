# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Shelter.destroy_all 
Pet.destroy_all
User.destroy_all
Appointment.destroy_all 



shelter1 = Shelter.create(name: "NYC Shelter", location: "Manhattan")
shelter2 = Shelter.create(name: "Puppy Palace", location: "Queens")
shelter3 = Shelter.create(name: "Floofers", location: "Brooklyn")
shelter4 = Shelter.create(name: "SI Homes", location: "Staten Island")
shelter5 = Shelter.create(name: "Boogie Pup", location: "Bronx")

pet1 = Pet.create(name: Faker::Creature::Dog.unique.name, breed: Faker::Creature::Dog.breed, age: rand(1..7), gender: "male", shelter_id: shelter1.id, available: true)
pet2 = Pet.create(name: Faker::Creature::Dog.unique.name, breed: Faker::Creature::Dog.breed, age: rand(1..7), gender: "female", shelter_id: shelter2.id, available: true)
pet3 = Pet.create(name: Faker::Creature::Dog.unique.name, breed: Faker::Creature::Dog.breed, age: rand(1..7), gender: "male", shelter_id: shelter3.id, available: true)
pet4 = Pet.create(name: Faker::Creature::Dog.unique.name, breed: Faker::Creature::Dog.breed, age: rand(1..7), gender: "female", shelter_id: shelter4.id, available: true)
pet5 = Pet.create(name: Faker::Creature::Dog.unique.name, breed: Faker::Creature::Dog.breed, age: rand(1..7), gender: "male", shelter_id: shelter5.id, available: true)

user1 = User.create(name:Faker::Name.unique.name, location: "Manhattan")
user2 = User.create(name:Faker::Name.unique.name, location: "Queens")
user3 = User.create(name:Faker::Name.unique.name, location: "Brooklyn")
user4 = User.create(name:Faker::Name.unique.name, location: "Staten Island")
user5 = User.create(name:Faker::Name.unique.name, location: "Bronx")

appt1 = Appointment.create(user_id: user1.id, pet_id: pet1.id, date_time: DateTime.new(2020,03,14,3,30))
appt1 = Appointment.create(user_id: user2.id, pet_id: pet2.id, date_time: DateTime.new(2020,03,15,3,30))
appt1 = Appointment.create(user_id: user3.id, pet_id: pet3.id, date_time: DateTime.new(2020,03,16,3,30))
appt1 = Appointment.create(user_id: user4.id, pet_id: pet4.id, date_time: DateTime.new(2020,03,17,3,30))
appt1 = Appointment.create(user_id: user5.id, pet_id: pet5.id, date_time: DateTime.new(2020,03,18,3,30))