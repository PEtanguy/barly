# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# create 1 user

puts 'creating user'

1.times do
  User.create(
    email: 'test@barly.io'
    password: '123456'
    gender: 'male'
    dob: '01/01/1871')
end

puts 'done creating user'

puts 'creating bars'

5.times do


# create 5 bars


# for each bar create 50 drinks (menu_items)
