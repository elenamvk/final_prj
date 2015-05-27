# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u1 = User.create( name: 'Elena', role: 'admin', verified: 'true', email:'el@el.com', password: "password")
u2 = User.create(name: 'MK', role: 'artist',verified: 'true', email:'mk@mk.com', password: "password",)
r1 = Request.create(message: 'Hello?', user_id: '2', start_date: '08-07-07', end_date: '09-07-07', n_of_people: '6', accepted: 'false' )
o1 = Offer.create(message: 'Yes!', user_id: '1', request_id: '1', offered: 'false')