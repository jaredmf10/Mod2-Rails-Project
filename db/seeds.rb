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

pet1 = Pet.create(name: Faker::Creature::Dog.unique.name, breed: Faker::Creature::Dog.breed, age: rand(1..7), gender: "male", shelter_id: Shelter.all.sample.id, available: true)


user1 = User.create(name:Faker::Name.unique.name, location: "Manhattan", password: "aa")
user2 = User.create(name:Faker::Name.unique.name, location: "Queens", password: "b")
user3 = User.create(name:Faker::Name.unique.name, location: "Brooklyn", password: "c")
user4 = User.create(name:Faker::Name.unique.name, location: "Staten Island", password: "d")
user5 = User.create(name:Faker::Name.unique.name, location: "Bronx", password: "d")

appt1 = Appointment.create(user_id: user1.id, pet_id: Pet.all.sample.id, date_time: DateTime.new(2020,03,14,3,30))


20.times do |appointment|
    Appointment.create(user_id: user1.id, pet_id: pet1.id, date_time: DateTime.new(2020,03,14,3,30))
end

20.times do |pet|
    Pet.create(name: Faker::Creature::Dog.unique.name, breed: Faker::Creature::Dog.breed, age: rand(1..7), gender: "male", shelter_id: Shelter.all.sample.id, available: true)

end