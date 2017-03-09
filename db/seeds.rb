# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Mannequin.destroy_all
Wig.destroy_all

mannequins = Mannequin.create( [ { name: "Mike",  height: 22 },
                                 { name: "Joan",  height: 25 },
                                 { name: "Koala", height: 30 },
                                 { name: "Bruch", height: 72 } ] )
wigs = Wig.create ( [
                        { name:   'Star Wars',
                          style:  'Curly',
                          color:  'Brown',
                          length: 10,
                          mannequin: mannequins[0] 
                        }, 

                        { name:   'Casablanca',
                          style:  'Straight',
                          color:  'Blonde',
                          length: 20,
                          mannequin: mannequins[1]
                        },

                        { name:   'Computer Blue',
                          style:  'Wavy',
                          color:  'Red',
                          length: 25,
                          mannequin: mannequins[2]
                        },

                        { name:   'Staind',
                          style:  'Curly',
                          color:  'Black',
                          length: 30,
                          mannequin: mannequins[3] 
                        }
                     ] )

