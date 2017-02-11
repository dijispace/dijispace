# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Listing.delete_all

Listing.create!(name:'Workshed',country:'Ghana' ,city:'Baatsona',seats:'5' ,price: '40' )
Listing.create!(name:'Ispace Hub',country:'Ghana' ,city:'Labone',seats:'6' ,price: '30' )
Listing.create!(name:'Impact Hub',country:'Ghana' ,city:'Osu',seats:'7' ,price: '10' )