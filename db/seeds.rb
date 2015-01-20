# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
trains = Train.create([
  { name: 'Blue'},
  { name: 'Green'},
  { name: 'Orange'},
  { name: 'Red'},
  ])

#blue_routes
Stop.create(train_id: '1', name: 'Revere Beach',   parent_station: 'place-rbmnl')
Stop.create(train_id: '1', name: 'Beachmont',      parent_station: 'place-bmmnl')
Stop.create(train_id: '1', name: 'Suffolk Downs',  parent_station: 'place-sdmnl')
Stop.create(train_id: '1', name: 'Orient Heights', parent_station: 'place-orhte')
Stop.create(train_id: '1', name: 'Wood Island',    parent_station: 'place-wimnl')
Stop.create(train_id: '1', name: 'Airport',        parent_station: 'place-aport')
Stop.create(train_id: '1', name: 'Maverick',       parent_station: 'place-mvbcl')
Stop.create(train_id: '1', name: 'Aquarium',       parent_station: 'place-aqucl')
Stop.create(train_id: '1', name: 'State Street',   parent_station: 'place-state')
Stop.create(train_id: '1', name: 'Bowdoin',        parent_station: 'place-bomnl')

# #green_routes
# Stop.create(train_id: '2', name: 'Lechmere',   parent_station: 'place-lech')
# Stop.create(train_id: '2', name: 'North Station',   parent_station: 'place-north')
# Stop.create(train_id: '2', name: 'Haymarket',   parent_station: 'place-haecl')
# Stop.create(train_id: '2', name: 'Park Street',   parent_station: 'place-pktrm')


#orange_routes
Stop.create(train_id: '3', name: 'Oak Grove',            parent_station: 'place-ogmnl')
Stop.create(train_id: '3', name: 'Malden Center',        parent_station: 'place-mlmnl')
Stop.create(train_id: '3', name: 'Wellington',           parent_station: 'place-welln')
Stop.create(train_id: '3', name: 'Assembly',             parent_station: 'place-astao')
Stop.create(train_id: '3', name: 'Sullivan Square',      parent_station: 'place-sull')
Stop.create(train_id: '3', name: 'Community College',    parent_station: 'place-ccmnl')
Stop.create(train_id: '3', name: 'North Station',        parent_station: 'place-north')
Stop.create(train_id: '3', name: 'Haymarket',            parent_station: 'place-haecl')
Stop.create(train_id: '3', name: 'State Street',         parent_station: 'place-state')
Stop.create(train_id: '3', name: 'Downtown Crossing',    parent_station: 'place-dwnxg')
Stop.create(train_id: '3', name: 'Chinatown',            parent_station: 'place-chncl')
Stop.create(train_id: '3', name: 'Tufts Medical Center', parent_station: 'place-tumnl')
Stop.create(train_id: '3', name: 'Back Bay',             parent_station: 'place-bbsta')
Stop.create(train_id: '3', name: 'Massachusetts Ave.',   parent_station: 'place-masta')
Stop.create(train_id: '3', name: 'Ruggles',              parent_station: 'place-rugg')
Stop.create(train_id: '3', name: 'Chinatown',            parent_station: 'place-chncl')
Stop.create(train_id: '3', name: 'Roxbury Crossing',     parent_station: 'place-rcmnl')
Stop.create(train_id: '3', name: 'Jackson Square',       parent_station: 'place-jaksn')
Stop.create(train_id: '3', name: 'Stony Brook',          parent_station: 'place-sbmnl')
Stop.create(train_id: '3', name: 'Green Street',         parent_station: 'place-grnst')
Stop.create(train_id: '3', name: 'Forest Hills',         parent_station: 'place-forhl')



#red_routes = Stop.create([
Stop.create(train_id: '4', name: 'Alewife',           parent_station: 'place-alfcl')
Stop.create(train_id: '4', name: 'Davis',             parent_station: 'place-davis')
Stop.create(train_id: '4', name: 'Porter',            parent_station: 'place-portr')
Stop.create(train_id: '4', name: 'Harvard',           parent_station: 'place-harsq')
Stop.create(train_id: '4', name: 'Central',           parent_station: 'place-cntsq')
Stop.create(train_id: '4', name: 'Kendall/MIT',       parent_station: 'place-knncl')
Stop.create(train_id: '4', name: 'Charles/MGH',       parent_station: 'place-chmnl')
Stop.create(train_id: '4', name: 'Park Street',       parent_station: 'place-pktrm')
Stop.create(train_id: '4', name: 'Downtown Crossing', parent_station: 'place-dwnxg')
Stop.create(train_id: '4', name: 'South Station',     parent_station: 'place-sstat')
Stop.create(train_id: '4', name: 'Broadway',          parent_station: 'place-brdwy')
Stop.create(train_id: '4', name: 'Andrew',            parent_station: 'place-andrw')
Stop.create(train_id: '4', name: 'JFK/Umass',         parent_station: 'place-jfk')
Stop.create(train_id: '4', name: 'SavinHill',         parent_station: 'place-shmnl')
Stop.create(train_id: '4', name: 'Fields Corner',     parent_station: 'place-fldcr')
Stop.create(train_id: '4', name: 'Shawmut',           parent_station: 'place-smmnl')
Stop.create(train_id: '4', name: 'Ashmont',           parent_station: 'place-asmnl')
Stop.create(train_id: '4', name: 'North Quincy',      parent_station: 'place-nqncy')
Stop.create(train_id: '4', name: 'Wollaston',         parent_station: 'place-wlsta')
Stop.create(train_id: '4', name: 'Quincy Center',     parent_station: 'place-qnctr')
Stop.create(train_id: '4', name: 'Quincy Adams',      parent_station: 'place-qamnl')
Stop.create(train_id: '4', name: 'Braintree',         parent_station: 'place-brntn')
