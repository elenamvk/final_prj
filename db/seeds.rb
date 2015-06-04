# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create( name: 'Elena', role: 'admin', verified: 'true', email:'el@el.com', password: "password", users_gravatar: "hosts.png", bio: "The Admin. Beware.")
User.create( name: 'Laura', role: 'host', verified: 'true', email:'l@ura.com', password: "password", users_gravatar: "hosts.png", bio: "Paris HQ")
User.create( name: 'Marco', role: 'host', verified: 'true', email:'m@rco.com', password: "password", users_gravatar: "hosts.png", bio: "Rome HQ")
User.create( name: 'Lena', role: 'host', verified: 'true', email:'len@a.com', password: "password", users_gravatar: "hosts.png", bio: "Bruxelles HQ")
User.create( name: 'Hannah', role: 'host', verified: 'true', email:'h@nnah.com', password: "password", users_gravatar: "hosts.png", bio: "Aia HQ")

User.create( name: 'Brand New', role: 'band', verified: 'true', email:'b@n.com', password: "password", users_gravatar: "musicians.png", bio: "Brand New is an alternative rock band from Long Island, New York. Formed in 2000, the band currently consists of vocalist/guitarist/lyricist Jesse Lacey, guitarist/vocalist/lyricist Vincent Accardi, bassist Garrett Tierney, and drummer Brian Lane.")

User.create( name: 'Authority Zero', role: 'band', verified: 'true', email:'a@z.com', password: "password", users_gravatar: "musicians.png", bio: "Authority Zero is a punk rock band from Mesa, Arizona formed in 1994. The band's style is rooted in reggae and skate punk, with Bad Religion, Pennywise, and Sublime cited as heavy influences.")

User.create( name: 'Anti-Flag', role: 'band', verified: 'true', email:'a@f.com', password: "password", users_gravatar: "musicians.png", bio: "Anti-Flag are an American punk rock band from Pittsburgh, Pennsylvania. The band is well known for political activism, focusing on anti-war activism, anti-imperialism, class struggle, human rights, and various sociopolitical sentiments.")

User.create( name: ' The Early November', role: 'band', verified: 'true', email:'te@n.com', password: "password", users_gravatar: "musicians.png", bio: "The Early November is an American rock band from New Jersey. The group formed in 1999 and signed with Drive-Thru Records in 2002.")

