# users = User.create([
# 	{first_name: 'Larissa', last_name: 'Tater', email: 'larissa@gmail.com', password: 'lt-password'},
# 	{first_name: 'Erich', last_name: 'Abbott', email: 'erich@gmail.com', password: 'ea-password'},
# 	{first_name: 'Nicholas', last_name: 'Wallace', email: 'nicholas@gmail.com', password: 'nw-password'},
# 	{first_name: 'Stephen', last_name: 'Deddens', email: 'stephen@gmail.com', password: 'sd-password'}])

# houses = House.create([
# 	{style: 'Mansion', theme: 'classic'},
# 	{style: 'Apartment', theme: 'classic'},
# 	{style: 'Shack', theme: 'classic'},
# 	{style: 'House', theme: 'classic'}])

# cars = Car.create([
# 	{name: '2003 Ford Focus', theme: 'lame'},
# 	{name: '2015 Toyota Tacoma', theme: 'practical'},
# 	{name: '2000 Ford Ranger', theme: 'farm'},
# 	{name: '2016 Honda Civic', theme: 'practical'}
# 	])

# spouses = Spouse.create([
# 	{name: 'Madonna', gender: 'female', theme: 'celebrity'},
# 	{name: 'Barack Obama', gender: 'male', theme: 'president'},
# 	{name: 'Brad Pitt', gender: 'male', theme: 'celebrity'},
# 	{name: 'Tom Hardy', gender: 'male', theme: 'British'}
# 	])

games = Game.create([
	{house: 'Mansion'}, {spouse: 'Barack Obama'}, {car: '2003 Ford Focus'}, {references: 1}
	])
game_logs = GameLog.create([
	{house: 'Shack', car: '1969 Ford Mustang', spouse: 'Halle Berry', user_id: 1}

	])

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
