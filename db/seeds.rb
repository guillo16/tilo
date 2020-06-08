# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts 'clearing database'

Products.delete_all
Category.delete_all
Division.delete_all

puts 'Creating division'

alacena = Division.create(title: 'Alacena', photo: 'https://res.cloudinary.com/dokddymx6/image/upload/v1591538997/Captura_de_Pantalla_2020-06-07_a_la_s_11.07.13_k1pgqd.png')
bebidas = Division.create(title: 'Bebidas', photo: 'https://images.unsplash.com/photo-1528556860752-2a6a19a285a3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=932&q=80')
snacks = Division.create(title: 'Snacks', photo: 'https://images.unsplash.com/photo-1566478989037-eec170784d0b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
cosmetica = Division.create(title: 'Cosmetica natural', photo: 'https://res.cloudinary.com/dokddymx6/image/upload/v1591538999/Captura_de_Pantalla_2020-06-07_a_la_s_11.08.17_ypkxd8.png')
heladera = Division.create(title: 'Heladera', photo: 'https://images.unsplash.com/photo-1501443762994-82bd5dace89a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
suplementos = Division.create(title: 'Suplementos', photo: 'https://images.unsplash.com/photo-1579722821273-0f6c7d44362f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80')

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
