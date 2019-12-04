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
    email: 'ben@gmail.com',
    password: '123456',
    gender: 'male',
    dob: '06/01/1990')

 end

1.times do
  User.create(

    email: 'issy@gmail.com',
    password: '123456',
    gender: 'female',
    dob: '01/02/1991')

end

Basket.create(
  user: User.first
)

puts 'Done creating user'

puts 'Creating bars'



  Bar.create(
    name: "River Alehouse",
    address: 'SE10 0RJ',
    capacity: '100',
    opening_time: '15:00',
    closing_time: '23:30',
    user: User.first
    )
  # 50.times do
  # MenuItem.create(
  #   name: Faker::Beer.name,
  #   # price: Faker::Number.normal(mean: 5, standard_deviation: 1.5),
  #   # price: rand(3.0...6.0).round(2),
  #   price: [ 3.49, 3.99, 4.15, 3.75, 3.85, 6.15, 5.49, 3.95, 2.99, 3.49, 4.55, 4.75, 5.15, 5.49, 6.55, 5,20, 5.20, 5.20].sample,
  #   description: Faker::Beer.style,
  #   bar: Bar.find(1),
  #   category: ["Beer", "Wine", "Cocktails", "Spirits", "Soft Drink"].sample
  #   )
  # end

  ######## Beer seed menu items ####################

  1.times do
  image = URI.open('https://pbs.twimg.com/media/DL7htjXVoAAsvz0.jpg')
  menu_item = MenuItem.new(
    name: "London Pride",
    price: 4.95,
    abv: "4.1%",
    description: "Rich & smooth, London Pride has a good malty base with a blend of hop character, easy drinking with great body & a fruity, satisfying finish",
    bar: Bar.first,
    category: "Beer"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

######## Wine seed menu items ####################

1.times do
  image = URI.open('https://explorewines.dk/wp-content/uploads/2018/09/Domaine-du-Grezas.png')
  menu_item = MenuItem.new(
    name: "Cotes Du Rhone Domaine Grezas",
    price: 27.50,
    abv: "11.2%",
    description: "A wonderful blend of Grenache, Syrah and Carignan",
    bar: Bar.first,
    category: "Wine"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://www.10international.com/wp-content/uploads/2014/07/RioDelReyCrianza-2017-660x1024.jpg')
  menu_item = MenuItem.new(
    name: "Rioja Crianza Rio Del Rey",
    price: 27.50,
    abv: "12.00%",
    description: "Lightly oaked. Food friendly and very approachable",
    bar: Bar.first,
    category: "Wine"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://darwina.pl/16203/cruz-alta-gran-reserva-malbec.jpg')
  menu_item = MenuItem.new(
    name: "Cruz Alta Malbec",
    price: 26,
    abv: "11.5%",
    description: "Smooth with spice & perfect for a meal",
    bar: Bar.first,
    category: "Wine"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://www.gerrys.uk.com/content/images/thumbs/0003392_chateau-fourcas-hosten-listrac-medoc-75cl_256.png')
  menu_item = MenuItem.new(
    name: "Medoc CH Fourcas Hosten",
    price: 44,
    abv: "11.0%",
    description: "A mature Bourgeiose from a great year",
    bar: Bar.first,
    category: "Wine"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://www.haskells.com/media/catalog/product/cache/1/image/816x1200/040ec09b1e35df139433887a97daa66f/6/1/615252_0_1_1_1.jpg')
  menu_item = MenuItem.new(
    name: "Beaune Bichot",
    price: 65,
    abv: "10.0%",
    description: "A developed Burgundian classic, lovely texture",
    bar: Bar.first,
    category: "Wine"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end


1.times do
  image = URI.open('https://www.nectar.net/productimages/win1009-leonard-road-chardonnay-3884836_t@2x.jpg')
  menu_item = MenuItem.new(
    name: "Leonard Road Chardonnay",
    price: 22,
    abv: "10.0%",
    description: "Un-oaked and youthful, luscious tropical fruit",
    bar: Bar.first,
    category: "Wine"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://images.wine.co.za/GetWineImage.ashx?ImageSize=large&IMAGEID=252520')
  menu_item = MenuItem.new(
    name: "Riebeek Chenin Blanc",
    price: 22.50,
    abv: "10.0%",
    description: "Lots of tropical fruit. ",
    bar: Bar.first,
    category: "Wine"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

######## Cocktails seed menu items ####################


######## Spirits seed menu items ####################


######## Soft drinks seed menu items ####################




#######################################################

  Bar.create(

    name: "The Owl & The Pussycat",
    address: 'W13 9RT',
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

    name: "The Grapes",
    address: 'E148BP',
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

    name: "Wenlock Arms",
    address: 'N17TA',
    capacity: '100',
    opening_time: '15:00',
    closing_time: '23:30',
    user: User.first
    )

  Bar.create(

    name: "The North Star",
    address: 'E113AI' ,
    capacity: '100',
    opening_time: '15:00',
    closing_time: '23:30',
    user: User.first
    )

  puts 'Finished creating bars'

  puts 'Creating menu items'

# images = ["https://images.unsplash.com/photo-1504502350688-00f5d59bbdeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80", "https://images.unsplash.com/photo-1551980362-5f5816fdf020?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80", "https://images.unsplash.com/photo-1573624658129-3f7856192f19?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80", "https://images.unsplash.com/photo-1514362545857-3bc16c4c7d1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80", "https://images.unsplash.com/photo-1567143768138-9ec527a6363a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80"]
# 50.times do
#   image = URI.open(images.sample)
#   menu_item = MenuItem.new(
#       name: Faker::Beer.name,
#       # price: rand(3.0...6.0).round(2),
#       price: [ 3.49, 3.99, 4.15, 3.75, 3.85, 6.15, 5.49, 3.95, 2.99, 3.49, 4.55, 4.75, 5.15, 5.49].sample,
#       description: Faker::Beer.style,
#       bar: Bar.first,
#       category: ["Beer", "Wine", "Cocktail", "Mocktail", "Soft Drink"].sample
#       )
#   menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
#   menu_item.save
# end

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




