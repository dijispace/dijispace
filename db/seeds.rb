# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Listing.delete_all

Listing.create!(name:'Workshed',country:'Ghana' ,city:'Baatsona,Accra',seats:'5' ,price: '40' )
Listing.create!(name:'Ispace',country:'Ghana' ,city:'Accra',seats:'6' ,price: '30' )
Listing.create!(name:'Ihub',country:'Ghana' ,city:'Labone',seats:'7' ,price: '10' )