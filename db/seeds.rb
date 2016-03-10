# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: 'admin@fyltr.it', password: 'adminadmin', role: 2)
User.create!(email: 'partner@fyltr.it', password: 'partnerpartner', role: 0)
User.create!(email: 'customer@fyltr.it', password: 'customercustomer', role: 1)