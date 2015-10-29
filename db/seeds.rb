# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def room_create
  room_array = (1..100).to_a
room = Room.create(room_number: room_array.sample)
end

if Room.count < 50
  50.times.map {room_create}
end

guest = Guest.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
guest = Guest.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
guest = Guest.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
guest = Guest.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
