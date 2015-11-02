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

def guest_create
guest = Guest.create(name: Faker::Name.name, phone_number: Faker::PhoneNumber.phone_number, reservation_number: Faker::Number.number(5) )
guest.room_assignments.create
end

if Guest.count < 40
  40.times.map {guest_create}
end
