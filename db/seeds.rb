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

Basket.create(
  user: User.first
)

puts 'Done creating user'

puts 'Creating bars'


  Bar.create(
    name: "Jack's Pub",
    address: 'WC2N 4HS',
    capacity: '100',
    opening_time: '15:00',
    closing_time: '23:30',
    user: User.first
    )


  Bar.create(
    name: "Tilly's Bar",
    address: 'SE1 7RW',
    capacity: '100',
    opening_time: '15:00',
    closing_time: '23:30',
    user: User.first
    )


  Bar.create(
    name: "Rick's Speakeasy",
    address: 'WC2N 6DU',
    capacity: '100',
    opening_time: '15:00',
    closing_time: '23:30',
    user: User.first
    )


  Bar.create(
    name: "Pierre's Winery",
    address: 'WC1H 0XG',
    capacity: '100',
    opening_time: '15:00',
    closing_time: '23:30',
    user: User.first
    )

  Bar.create(
    name: "Lenny's Latenight",
    address: 'WC2E 8PS' ,
    capacity: '100',
    opening_time: '15:00',
    closing_time: '23:30',
    user: User.first
    )

  puts 'Finished creating bars'

  puts 'Creating menu items'

50.times do
  MenuItem.create(
    name: Faker::Beer.name,
    price: Faker::Number.decimal(l_digits: 1),
    description: Faker::Beer.style,
    bar: Bar.first,
    category: ["Beer", "Wine", "Cocktail", "Mocktail", "Soft Drink"].sample
    )
  end

# 30.times do
#   Order.create(
#     bar: Bar.first,
#     basket: User.first.basket
#   )
# end

  puts 'All done!'




