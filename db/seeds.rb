# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Mannequin.destroy_all
Wig.destroy_all

mannequins = []

20.times do 
  mannequins << Mannequin.create( name: Faker::Pokemon.name,  
                                  height: rand(1..100) )
end

100.times do
wigs = Wig.create ( { name:   [Faker::Space.moon, 
                               Faker::Space.galaxy,
                               Faker::Space.nebula,
                               Faker::Space.planet].sample,
                      style:  Faker::Cat.name,
                      color:  Faker::Color.color_name,
                      length: rand(1..100),
                      mannequin: mannequins.sample
                    } )
end