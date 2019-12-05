# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
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
    email: 'jack.h@fullers.co.uk',
    password: '123456',
    gender: 'male',
    dob: '06/01/1990',
    first_name: 'Jack',
    last_name: 'Harris')
 end

1.times do
  User.create(

    email: 'rick.t@gmail.com',
    password: '123456',
    gender: 'male',
    dob: '01/02/1991',
    first_name: 'Rick',
    last_name: "Thompson")
end

1.times do
  User.create(

    email: '1@barly.io',
    password: '123456',
    gender: 'male',
    dob: '01/02/1991',
    first_name: 'Tilly',
    last_name: "Thompson")
end

1.times do
  User.create(

    email: '2@barly.io',
    password: '123456',
    gender: 'male',
    dob: '01/02/1991',
    first_name: 'Pierre',
    last_name: "Thompson")
end

1.times do
  User.create(

    email: '3@barly.io',
    password: '123456',
    gender: 'male',
    dob: '01/02/1991',
    first_name: 'Marco',
    last_name: "Thompson")
end

1.times do
  User.create(

    email: '4@barly.io',
    password: '123456',
    gender: 'male',
    dob: '01/02/1991',
    first_name: 'Ben',
    last_name: "Thompson")
end

1.times do
  User.create(

    email: '5@barly.io',
    password: '123456',
    gender: 'male',
    dob: '01/02/1991',
    first_name: 'Lenny',
    last_name: "Thompson")
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

1.times do
  image = URI.open('https://cdn.shopify.com/s/files/1/0834/8747/products/TSP_180322-349.jpg?v=1523454316')
  menu_item = MenuItem.new(
    name: "Oliver's Island",
    price: 5.05,
    abv: "3.8%",
    description: "A refreshing golden ale brewed with malt & hops in perfect balance with citrus and tropical fruit notes & a crisp satisfying bite",
    bar: Bar.first,
    category: "Beer"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://www.lambandflagcoventgarden.co.uk/-/media/Sites/Microsites/L/The-Lamb-and-Flag-_-P154/Images/2017-new-images/GalleryDrink/12DrinkPoured.jpg')
  menu_item = MenuItem.new(
    name: "Seafarers",
    price: 4.55,
    abv: "3.6%",
    description: "Faintly fruity on the nose, this light amber beer sails a steady course through welldeveloped malt character towards a satisfying, hoppy finish",
    bar: Bar.first,
    category: "Beer"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://i.pinimg.com/originals/3d/95/8d/3d958dcc9ed740ea00a04c12c91c1c61.jpg')
  menu_item = MenuItem.new(
    name: "ESB",
    price: 5.25,
    abv: "5.5%",
    description: "Rich mahogany in colour, ESB tempts with aromas of orange marmalade, balanced
by soft malt toffee. The hops impart grassy, peppery notes alongside hints of citrus fruit
– while the Pale Ale and Crystal malts bring distinctive biscuity flavours. A smooth, delicate bitterness lingers on the palate to give a supreme finish.",
    bar: Bar.first,
    category: "Beer"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://cdn-b.william-reed.com/var/wrbm_gb_hospitality/storage/images/publications/hospitality/morningadvertiser.co.uk/article/2018/03/12/fuller-s-we-won-t-blanket-our-pubs-with-dark-star-beer/2768552-1-eng-GB/Fuller-s-We-won-t-blanket-our-pubs-with-Dark-Star-beer_wrbm_large.jpg')
  menu_item = MenuItem.new(
    name: "Darkstar Hophead",
    price: 5.15,
    abv: "3.8%",
    description: "An extremely clean-drinking pale golden ale with a strong floral aroma and elderflower notes from the Cascade hops. This beer is full-bodied and full-flavoured yet gentle
enough to make it a favourite session beer.",
    bar: Bar.first,
    category: "Beer"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://www.posocialclub.co.uk/wp-content/uploads/2016/11/asmy_gkipa2015_073midres.jpg')
  menu_item = MenuItem.new(
    name: "Green King IPA",
    price: 5.15,
    abv: "3.6%",
    bar: Bar.first,
    category: "Beer"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://i2-prod.essexlive.news/incoming/article2025552.ece/ALTERNATES/s615b/0_Heres-how-you-get-get-a-free-pint-in-London-this-Thursday-1.jpg')
  menu_item = MenuItem.new(
    name: "Abbot Ale",
    price: 5.25,
    abv: "5%",
    bar: Bar.first,
    category: "Beer"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end



######## Wine seed menu items ####################

1.times do
  image = URI.open('https://res.cloudinary.com/dwdzxacem/image/upload/v1575546942/cotesdurhone_xfjjsu.jpg')
  menu_item = MenuItem.new(
    name: "Cotes Du Rhone Domaine Grezas",
    price: 27.55,
    abv: "11.2%",
    description: "A wonderful blend of Grenache, Syrah and Carignan",
    bar: Bar.first,
    category: "Wine"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://res.cloudinary.com/dwdzxacem/image/upload/v1575546942/rioja_c1d6ce.jpg')
  menu_item = MenuItem.new(
    name: "Rioja Crianza Rio Del Rey",
    price: 27.55,
    abv: "12.00%",
    description: "Lightly oaked. Food friendly and very approachable",
    bar: Bar.first,
    category: "Wine"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://res.cloudinary.com/dwdzxacem/image/upload/v1575546942/alta_scnxm8.jpg')
  menu_item = MenuItem.new(
    name: "Cruz Alta Malbec",
    price: 26.15,
    abv: "11.5%",
    description: "Smooth with spice & perfect for a meal",
    bar: Bar.first,
    category: "Wine"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://res.cloudinary.com/dwdzxacem/image/upload/v1575546942/cas_wbrhv3.jpg')
  menu_item = MenuItem.new(
    name: "Medoc CH Fourcas Hosten",
    price: 44.25,
    abv: "11.0%",
    description: "A mature Bourgeiose from a great year",
    bar: Bar.first,
    category: "Wine"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://res.cloudinary.com/dwdzxacem/image/upload/v1575546942/bichot_u9idyz.jpg')
  menu_item = MenuItem.new(
    name: "Beaune Bichot",
    price: 65.05,
    abv: "10.0%",
    description: "A developed Burgundian classic, lovely texture",
    bar: Bar.first,
    category: "Wine"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end


1.times do
  image = URI.open('https://res.cloudinary.com/dwdzxacem/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1575546942/leonard_lpocpy.jpg')
  menu_item = MenuItem.new(
    name: "Leonard Road Chardonnay",
    price: 22.35,
    abv: "10.0%",
    description: "Un-oaked and youthful, luscious tropical fruit",
    bar: Bar.first,
    category: "Wine"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://res.cloudinary.com/dwdzxacem/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1575546942/riebeek_kwvaos.jpg')
  menu_item = MenuItem.new(
    name: "Riebeek Chenin Blanc",
    price: 22.15,
    abv: "10.0%",
    description: "Lots of tropical fruit.",
    bar: Bar.first,
    category: "Wine"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end





######## Cocktails seed menu items ####################


1.times do
  image = URI.open('https://res.cloudinary.com/dwdzxacem/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1575490840/gin_t_k3u0eh.jpg')
  menu_item = MenuItem.new(
    name: "Gin & Tonic",
    price: 7.55,
    abv: "6%",
    description: "The classic British drink",
    bar: Bar.first,
    category: "Cocktail"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://res.cloudinary.com/dwdzxacem/image/upload/v1575490841/liisland_xokhyb.jpg')
  menu_item = MenuItem.new(
    name: "Long Island Iced Tea",
    price: 8.49,
    abv: "6%",
    description: "An unusual blend of vodka, gin, tequila, rum and orange liqueur with cola. Perfect together",
    bar: Bar.first,
    category: "Cocktail"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://res.cloudinary.com/dwdzxacem/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1575490842/mojito1_wbppz2.jpg')
  menu_item = MenuItem.new(
    name: "Mojito",
    price: 7.99,
    abv: "6%",
    description: "The perfect party drink mixing fresh mint, white rum, sugar, zesty lime",
    bar: Bar.first,
    category: "Cocktail"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://res.cloudinary.com/dwdzxacem/image/upload/v1575490840/cap1_uugwrm.jpg')
  menu_item = MenuItem.new(
    name: "Caipirinha",
    price: 7.55,
    abv: "5%",
    description: "Brazil's sweet and refreshing national cocktail",
    bar: Bar.first,
    category: "Cocktail"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://res.cloudinary.com/dwdzxacem/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1575490840/bm1_nldbrm.jpg')
  menu_item = MenuItem.new(
    name: "Bloody Mary",
    price: 8.25,
    abv: "6%",
    description: "Classic vodka cocktail with tomato juice, and other spices",
    bar: Bar.first,
    category: "Cocktail"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://res.cloudinary.com/dwdzxacem/image/upload/v1575490840/Cuba_Libre_ynztcb.jpg')
  menu_item = MenuItem.new(
    name: "Cuba Libre",
    price: 6.85,
    abv: "5%",
    description: "Equal parts simple, refreshng and special",
    bar: Bar.first,
    category: "Cocktail"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://res.cloudinary.com/dwdzxacem/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1575490841/marti_e8fmhp.jpg')
  menu_item = MenuItem.new(
    name: "Martini",
    price: 7.85,
    abv: "6%",
    description: "Dry, Elegant, Classic",
    bar: Bar.first,
    category: "Cocktail"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end





######## Spirits seed menu items ####################


######## Soft drinks seed menu items ####################

1.times do
  image = URI.open("https://res.cloudinary.com/dwdzxacem/image/upload/v1575545904/coke_dxsgja.jpg")
  menu_item = MenuItem.new(
    name: "Coca Cola",
    price: 4.25,
    abv: "",
    description:"",
    bar: Bar.first,
    category: "Soft Drink"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://res.cloudinary.com/dwdzxacem/image/upload/v1575545904/dietcoke_hvms1e.jpg')
  menu_item = MenuItem.new(
    name: "Diet Coke",
    price: 4.25,
    abv: "",
    description:"",
    bar: Bar.first,
    category: "Soft Drink"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://res.cloudinary.com/dwdzxacem/image/upload/v1575545904/lemonade_i40ocf.jpg')
  menu_item = MenuItem.new(
    name: "Cloudy Lemonade",
    price: 4.95,
    abv: "",
    description:"",
    bar: Bar.first,
    category: "Soft Drink"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://res.cloudinary.com/dwdzxacem/image/upload/v1575545904/ginger_eomyrm.jpg')
  menu_item = MenuItem.new(
    name: "Ginger Ale",
    price: 4.95,
    abv: "",
    description:"",
    bar: Bar.first,
    category: "Soft Drink"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://res.cloudinary.com/dwdzxacem/image/upload/v1575545904/water_r04boh.jpg')
  menu_item = MenuItem.new(
    name: "Sparkling Water",
    price: 3.55,
    abv: "",
    description:"",
    bar: Bar.first,
    category: "Soft Drink"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://res.cloudinary.com/dwdzxacem/image/upload/v1575545904/orange_flvmpu.jpg')
  menu_item = MenuItem.new(
    name: "Orange Juice",
    price: 3.55,
    abv: "",
    description:"",
    bar: Bar.first,
    category: "Soft Drink"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end

1.times do
  image = URI.open('https://res.cloudinary.com/dwdzxacem/image/upload/v1575545904/apple_zrvoot.jpg')
  menu_item = MenuItem.new(
    name: "Apple Juice",
    price: 3.55,
    abv: "",
    description:"",
    bar: Bar.first,
    category: "Soft Drink"
    )
  menu_item.drink_photo.attach(io: image, filename: 'drink-image.jpg', content_type: 'image/jpg')
  menu_item.save
end






#######################################################

  # Bar.create(

  #   name: "The Owl & The Pussycat",
  #   address: 'W13 9RT',
  #   capacity: '100',
  #   opening_time: '15:00',
  #   closing_time: '23:30',
  #   user: User.first
  #   )

  # 50.times do
  # MenuItem.create(
  #   name: Faker::Beer.name,
  #   price: [ 3.49, 3.99, 4.15, 3.75, 3.85, 6.15, 5.49, 3.95, 2.99, 3.49, 4.55, 4.75, 5.15, 5.49].sample,
  #   description: Faker::Beer.style,
  #   bar: Bar.last,
  #   category: ["Beer", "Wine", "Cocktail", "Mocktail", "Soft Drink"].sample
  #   )
  # end


  # Bar.create(

  #   name: "The Grapes",
  #   address: 'E148BP',
  #   capacity: '100',
  #   opening_time: '15:00',
  #   closing_time: '23:30',
  #   user: User.first
  #   )
  # 50.times do
  # MenuItem.create(
  #   name: Faker::Beer.name,
  #   price: [ 3.49, 3.99, 4.15, 3.75, 3.85, 6.15, 5.49, 3.95, 2.99, 3.49, 4.55, 4.75, 5.15, 5.49].sample,
  #   # price: Faker::Number.decimal(l_digits: 1, range: 1..7),
  #   # price: [ 3.50, 3.99, 4.20, 3.70, 3.90, 6.10, 5.40].sample,
  #   description: Faker::Beer.style,
  #   bar: Bar.last,
  #   category: ["Beer", "Wine", "Cocktail", "Mocktail", "Soft Drink"].sample
  #   )
  # end


  # Bar.create(

  #   name: "Wenlock Arms",
  #   address: 'N17TA',
  #   capacity: '100',
  #   opening_time: '15:00',
  #   closing_time: '23:30',
  #   user: User.first
  #   )

  # Bar.create(

  #   name: "The North Star",
  #   address: 'E113AI' ,
  #   capacity: '100',
  #   opening_time: '15:00',
  #   closing_time: '23:30',
  #   user: User.first
  #   )

  # puts 'Finished creating bars'

  # puts 'Creating menu items'

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




