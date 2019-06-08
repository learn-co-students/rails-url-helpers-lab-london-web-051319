# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create(first_name: "Clint", last_name: "Barton", active: false)
Student.create(first_name: "Steve", last_name: "Rogers", active: false)
Student.create(first_name: "Peter", last_name: "Parker", active: true)
