# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
restaurants_attributes = [
  {
    name:         'Tri Express',
    address:      'Avenue Laurier, Montreal',
    category:  'japanese'
  },
  {
    name:         'Chez Victoire',
    address:      'Avenue Mont-Royal, Montreal',
    category:  'french'
  },
  {
    name:         'Chez Moï',
    address:      'Allées Francois Verdier, Toulouse',
    category:  'chinese'
  },
  {
    name:         'Stella',
    address:      'Avenue Laurier, Montreal',
    category:  'italian'
  },
  {
    name:         'Prima Fabrica',
    address:      'Place Saint-Georges, Toulouse',
    category:  'italian'
  },
]
Restaurant.create!(restaurants_attributes)
