# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
PropertyType.create(name: '1BHK', description: '1 Bedroom + Hall + Kitchen')
PropertyType.create(name: '2BHK', description: '2 Bedrooms + Hall + Kitchen')
PropertyType.create(name: '3BHK', description: '3 Bedrooms + Hall + Kitchen')
PropertyType.create(name: '4BHK', description: '4 Bedrooms + Hall + Kitchen')
PropertyType.create(name: '5BHK', description: '5 Bedrooms + Hall + Kitchen')
PropertyType.create(name: 'Appartment', description: 'Customised appartment flates')
PropertyType.create(name: 'Banglow')
PropertyType.create(name: 'Studio Room', description: 'Small Room with space of bed and some hall')
PropertyType.create(name: '1RK', description: '1 Room + Kitchen')