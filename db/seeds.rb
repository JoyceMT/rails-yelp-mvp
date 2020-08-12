puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary, London', category: 'french' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High, London', category: 'italian' }
bistrot =  { name: 'Bistrot', address: '43 Polanco, Mexico City', category: 'mexican' }
parnita =  { name: 'Parnita', address: '32 Roma, Mexico City', category: 'mexican' }
mineiro =  { name: 'Bar do Mineiro', address: '54 Santa Teresa, Rio de Janeiro', category: 'italian' }

[ dishoom, pizza_east, bistrot, parnita, mineiro ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
