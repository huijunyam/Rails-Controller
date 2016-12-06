# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user1 = User.create!(username: 'hjyam')
user2 = User.create!(username: 'alex1023')
user3 = User.create!(username: 'alicegeez')

contact1 = Contact.create!(name: 'Huijun', email: 'huijunyam@gmail.com', user_id: user1.id)
contact2 = Contact.create!(name: 'Alex', email: 'alex@gmail.com', user_id: user2.id)
contact3 = Contact.create!(name: 'Alice', email: 'alice@gmail.com', user_id: user3.id)

contact_shares1 = ContactShare.create!(contact_id: contact2.id, user_id: user1.id)
contact_shares2 = ContactShare.create!(contact_id: contact3.id, user_id: user1.id)
