# Photo.destroy_all
Song.destroy_all
Artist.destroy_all


artist_27_1 = Artist.create!( { name: "Kurt Cobain", image_url: "http://res.cloudinary.com/dlcdg8wkp/image/upload/v1514825509/esdadw4zqmb8wnilr4fn.jpg" } )
artist_27_2 = Artist.create!( { name: "Jim Morrison", image_url: "http://res.cloudinary.com/dlcdg8wkp/image/upload/v1514734983/gptyn9fpbdxvbje0qczv.jpg" } )
artist_27_3 = Artist.create!( { name: "Amy Jade Winehouse", image_url: "http://res.cloudinary.com/dlcdg8wkp/image/upload/v1515076550/dwmjbipxnv1qbjucpyp7.jpg" } )
artist_27_4 = Artist.create!( { name: "Jimi Hendrix", image_url: "http://res.cloudinary.com/dlcdg8wkp/image/upload/v1515076551/dwropzvhllkt6v5tm8xc.jpg"} )
artist_27_5 = Artist.create!( { name: "Janis Joplin", image_url: "http://res.cloudinary.com/dlcdg8wkp/image/upload/v1515076553/mzxas5lpgl5b70idlyex.jpg" } )
artist_27_6 = Artist.create!( { name: "Robert Johnson", image_url: "http://res.cloudinary.com/dlcdg8wkp/image/upload/v1515076554/bx6h9dnejprcijg1ww4v.png" } )
artist_27_7 = Artist.create!( { name: "Rudy Lewis", image_url: "http://res.cloudinary.com/dlcdg8wkp/image/upload/c_scale,w_300/v1514664515/images_kp5nql.jpg" } )

artist_count = Artist.count
puts "#{artist_count} artists were created."

#Songs
song_1 = Song.create!( { title: "All Apologies", artist: artist_27_1 } )
song_2 = Song.create!( { title: "Serve The Servants", artist: artist_27_1 } )
song_3 = Song.create!( { title: "Lithium", artist: artist_27_1 } )
song_4 = Song.create!( { title: "Light My Fire", artist: artist_27_2 } )
song_5 = Song.create!( { title: "The Crystal Ship", artist: artist_27_2 } )
song_6 = Song.create!( { title: "The Unknown Soldier", artist: artist_27_2 } )
song_7 = Song.create!( { title: "Valerie", artist: artist_27_3 } )
song_8 = Song.create!( { title: "Rehabd", artist: artist_27_3 } )
song_9 = Song.create!( { title: "Back To Black", artist: artist_27_3 } )
song_10 = Song.create!( { title: "Hey Joe", artist: artist_27_4 } )
song_11 = Song.create!( { title: "Voodoo Child", artist: artist_27_4 } )
song_12 = Song.create!( { title: "Purple Haze", artist: artist_27_4 } )
song_12 = Song.create!( { title: "Me and Bobby McGee", artist: artist_27_5 } )
song_12 = Song.create!( { title: "Cry Baby", artist: artist_27_5 } )
song_12 = Song.create!( { title: "Kozmic Blues", artist: artist_27_5 } )
song_12 = Song.create!( { title: "Cross Road Blues", artist: artist_27_6 } )
song_12 = Song.create!( { title: "Come on in My Kitchen", artist: artist_27_6 } )
song_12 = Song.create!( { title: "Hellhoundon My Trail", artist: artist_27_6 } )
song_12 = Song.create!( { title: "Under the Boardwalk", artist: artist_27_7 } )
song_12 = Song.create!( { title: "Sweet for My Sweet", artist: artist_27_7 } )
song_12 = Song.create!( { title: "I Remember Christmas", artist: artist_27_7 } )

songs_count = Song.count
puts "#{songs_count} songs were created."
