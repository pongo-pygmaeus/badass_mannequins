Mannequin.destroy_all
Wig.destroy_all

mannequins = []

20.times do 
  mannequins << Mannequin.create( name: Faker::Pokemon.name,  
                                  height: rand(1..100) )
end

100.times do
wigs = Wig.create ( { name:  [Faker::Space.moon, 
                              Faker::Space.galaxy,
                              Faker::Space.nebula,
                              Faker::Space.planet].sample,
                      style:  Faker::Cat.name,
                      color:  Faker::Color.color_name,
                      length: rand(1..100),
                      mannequin: mannequins.sample
                    } )
end