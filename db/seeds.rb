# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# guest = Guest.create(name: 'Gavin', phone_number: "727-389-4944", reservation_number: "123")
# room_assignment = guest.room_assignments.create
# room = Room.create(room_number: 1)
# room_assignment.update(room_id: room.id)

guest = Guest.create(name: 'Michael', phone_number: "727-389-4944", reservation_number: "1215")
room_assignment = guest.room_assignments.create

# def room_create
#   room_number = 2
# room = Room.create(room_number: room_number =+ 1)
# end
#
# if Room.count < 50
#   50.times.map {room_create}
# end
#
# def guest_create
# guest = Guest.create(name: Faker::Name.name, phone_number: Faker::PhoneNumber.phone_number, reservation_number: Faker::Number.number(5) )
# guest.room_assignments.create
# end
#
# if Guest.count < 40
#   40.times.map {guest_create}
# end
