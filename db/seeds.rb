# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{
	email: "testuser@test.com",
	password: "1234test",
	password_confirmation: "1234test"
	}, 
	{
	email: "testuser2@test.com",
	password: "1234test",
	password_confirmation: "1234test"
	}])

shelters = Shelter.create([{
	user_id: 1,
	name: "Downtown Homeless Shelter",
	address: "413 south Main",
	phone_number: "801-123-4567"},
	{
	user_id: 1,
	name: "Women's Shelter",
	address: "23 State",
	phone_number: "801-765-4321"},
	{
	user_id: 2,
	name: "County Animal Shelter",
	address: "12300 south 400 west",
	phone_number: "801-123-1234"},
	{
	user_id: 2,
	name: "Riverdale Homeless Shelter",
	address: "9800 south Main",
	phone_number: "801-321-4567"},
	{
	user_id: 1,
	name: "Park Homeless Shelter",
	address: "450 east 100 south",
	phone_number: "801-333-4455"}])

itemNames = ["Shoes", "Shirts", "Pants", "Food"]
itemDescriptions = ["Mens", "Womens", "Jeans", "Canned Beans", "Canned Soup"]

items = Item.create([
	{name: itemNames[0], description: itemDescriptions[0]},
	{name: itemNames[0], description: itemDescriptions[1]},
	{name: itemNames[1], description: itemDescriptions[0]},
	{name: itemNames[1], description: itemDescriptions[1]},
	{name: itemNames[2], description: itemDescriptions[1]},
	{name: itemNames[2], description: itemDescriptions[0]},
	{name: itemNames[3], description: itemDescriptions[3]},
	{name: itemNames[3], description: itemDescriptions[4]},
	])
Shelter.all.each do |shelter|
	Faker::Number.between(2,3).times do
		ShelterItem.create(
			shelter: shelter, 
			item: Item.all[Faker::Number.unique.between(0,7)], 
			inventory: Faker::Number.between(2,50),
		)
	end
	Faker::Number.unique.clear
end