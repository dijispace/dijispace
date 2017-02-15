# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Space.delete_all

Space.create!(name:'Workshed',country:'Ghana' ,location:'Baatsona',seats:'5' ,price: '40' )
Space.create!(name:'Ispace Hub',country:'Ghana' ,location:'Labone',seats:'6' ,price: '30' )
Space.create!(name:'Impact Hub',country:'Ghana' ,city:'Osu',seats:'7' ,price: '10' )
Space.create!(name:'Airspace Hub',country:'Ghana' ,city:'Takoradi',seats:'9' ,price: '15' )
Space.create!(name:'CC Hub',country:'Nigeria' ,city:'Lagos',seats:'9' ,price: '15' )
Space.create!(name:'Creation Hub',country:'Nigeria' ,city:'Abuja',seats:'9' ,price: '15' )
Space.create!(name:'Creation Hub',country:'Ghana' ,city:'Baatsona',seats:'9' ,price: '15' )
Space.create!(name:'Penplusbytes',country:'Ghana' ,city:'Baatsona',seats:'9' ,price: '15' )
