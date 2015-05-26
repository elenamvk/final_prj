# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create( name: 'Elena', role: 'admin' , verified: 'true')
User.create(name: 'MK', role: 'artist', verified: 'true')
Request.create(message: 'Hello?', user_id: '1', start_date: '08-07-07', end_date: '09-07-07', n_of_people: '6', accepted: 'false' )
Offer.create(message: 'Yes!', user_id: '2', request_id: '1', offered: 'false')