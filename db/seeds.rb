# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'open-uri'
# require 'nokogiri'

require 'faker'

MenuItem.destroy_all
Admin.destroy_all
Basket.destroy_all
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
    name: "Lamb & Flag",
    address: '33 Rose St, Covent Garden, London WC2E 9EB',
    capacity: '100',
    opening_time: '15:00',
    closing_time: '23:30',
    user: User.first
    )
  50.times do
  MenuItem.create(
    name: Faker::Beer.name,
    # price: Faker::Number.normal(mean: 5, standard_deviation: 1.5),
    # price: rand(3.0...6.0).round(2),
    price: [ 3.49, 3.99, 4.15, 3.75, 3.85, 6.15, 5.49, 3.95, 2.99, 3.49, 4.55, 4.75, 5.15, 5.49].sample,
    description: Faker::Beer.style,
    bar: Bar.find(1),
    category: ["Beer", "Wine", "Cocktail", "Mocktail", "Soft Drink"].sample
    )
  end


  Bar.create(
    name: "Tilly's Bar",
    address: 'SE1 7RW',
    capacity: '100',
    opening_time: '15:00',
    closing_time: '23:30',
    user: User.first
    )

  50.times do
  MenuItem.create(
    name: Faker::Beer.name,
    price: [ 3.49, 3.99, 4.15, 3.75, 3.85, 6.15, 5.49, 3.95, 2.99, 3.49, 4.55, 4.75, 5.15, 5.49].sample,
    description: Faker::Beer.style,
    bar: Bar.find(2),
    category: ["Beer", "Wine", "Cocktail", "Mocktail", "Soft Drink"].sample
    )
  end


  Bar.create(
    name: "Rick's Speakeasy",
    address: 'WC2N 6DU',
    capacity: '100',
    opening_time: '15:00',
    closing_time: '23:30',
    user: User.first
    )
  50.times do
  MenuItem.create(
    name: Faker::Beer.name,
    price: [ 3.49, 3.99, 4.15, 3.75, 3.85, 6.15, 5.49, 3.95, 2.99, 3.49, 4.55, 4.75, 5.15, 5.49].sample,
    # price: Faker::Number.decimal(l_digits: 1, range: 1..7),
    # price: [ 3.50, 3.99, 4.20, 3.70, 3.90, 6.10, 5.40].sample,
    description: Faker::Beer.style,
    bar: Bar.find(3),
    category: ["Beer", "Wine", "Cocktail", "Mocktail", "Soft Drink"].sample
    )
  end


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

images = ["https://images.unsplash.com/photo-1504502350688-00f5d59bbdeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80", "https://images.unsplash.com/photo-1551980362-5f5816fdf020?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80", "https://images.unsplash.com/photo-1573624658129-3f7856192f19?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80", "https://images.unsplash.com/photo-1514362545857-3bc16c4c7d1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80", "https://images.unsplash.com/photo-1567143768138-9ec527a6363a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80"]
50.times do
  image = URI.open(images.sample)
  menu_item = MenuItem.new(
      name: Faker::Beer.name,
      # price: rand(3.0...6.0).round(2),
      price: [ 3.49, 3.99, 4.15, 3.75, 3.85, 6.15, 5.49, 3.95, 2.99, 3.49, 4.55, 4.75, 5.15, 5.49].sample,
      description: Faker::Beer.style,
      bar: Bar.first,
      category: ["Beer", "Wine", "Cocktail", "Mocktail", "Soft Drink"].sample
      )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

puts 'Creating admins'

Bar.all.each do |b|
  Admin.create(user: User.first, bar: b, first_name: User.first.email)
end

puts 'Finished creating admins'



  puts 'All done!'



#   pub = ''
# url = "https://en.wikipedia.org/wiki/List_of_pubs_in_London#{pub}"

# html_file = open(url).read
# html_doc = Nokogiri::HTML(html_file)

# html_doc.search('.m_titre_resultat a').each do |element|
#   puts element.text.strip
#   puts element.attribute('href').value
# end




