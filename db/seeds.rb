# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts 'clearing database'

Order.delete_all
LineItem.delete_all
Cart.delete_all
Product.delete_all
Category.delete_all
Division.delete_all
User.delete_all

puts 'creating user'
User.create(email: 'user1@hotmail.com', password: 123456, admin: true)


puts 'Creating division'

alacena = Division.create(title: 'Alacena', photo: 'https://res.cloudinary.com/dokddymx6/image/upload/v1591538997/Captura_de_Pantalla_2020-06-07_a_la_s_11.07.13_k1pgqd.png')
bebidas = Division.create(title: 'Bebidas', photo: 'https://res.cloudinary.com/dokddymx6/image/upload/v1591799182/Captura_de_Pantalla_2020-06-10_a_la_s_11.19.19_w99wgc.jpg')
snacks = Division.create(title: 'Snacks', photo: 'https://res.cloudinary.com/dokddymx6/image/upload/c_scale,w_1346/v1591799161/Captura_de_Pantalla_2020-06-10_a_la_s_11.23.24_wgiddd.jpg')
cosmetica = Division.create(title: 'Cosmetica natural', photo: 'https://res.cloudinary.com/dokddymx6/image/upload/v1591799081/1561_1_pd6bi3.jpg')
heladera = Division.create(title: 'Heladera', photo: 'https://images.unsplash.com/photo-1501443762994-82bd5dace89a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
suplementos = Division.create(title: 'Suplementos', photo: 'https://res.cloudinary.com/dokddymx6/image/upload/c_scale,w_1477/v1591799186/Captura_de_Pantalla_2020-06-10_a_la_s_11.17.48_jxhy3j.jpg')

puts 'creating categories'

Category.create(title: 'Leches', division: bebidas)
Category.create(title: 'Jugos', division: bebidas )
Category.create(title: 'Infusiones', division: bebidas )
Category.create(title: 'Mieles', division: alacena )
Category.create(title: 'Mermeladas', division: alacena )
Category.create(title: 'Semillas', division: alacena )
Category.create(title: 'Conservas', division: alacena )
Category.create(title: 'Arroz', division: alacena )

puts "finish seed"
