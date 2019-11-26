# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
MenuItem.destroy_all
Bar.destroy_all
User.destroy_all


# create 1 user

puts 'Creating user'

1.times do
  User.create(
    email: 'test@barly.io',
    password: '123456',
    gender: 'male',
    dob: '01/01/1871')
end

puts 'Done creating user'

puts 'Creating bars'


5.times do
  Bar.create(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    capacity: '100',
    opening_time: '15:00',
    closing_time: '23:30',
    user: User.first
    )
  end

  puts 'Finished creating bars'

  puts 'Creating menu items'

50.times do
  MenuItem.create(
    name: Faker::Beer.name,
    price: Faker::Number.decimal(l_digits: 2),
    description: Faker::Beer.style,
    bar: Bar.first
    )
  end

  puts 'All done!'


