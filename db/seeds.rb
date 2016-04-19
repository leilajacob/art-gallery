# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{ name: 'Sold' }, { name: 'For Sale' }])

User.new({ :email => 'leilajacob@me.com', :password => 'lj007670', :password_confirmation => 'lj007670'}).save