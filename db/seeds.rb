# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities)


images = ['midnight.jpg', 'pes2009.jpg', 'rails.png', 'pes2009.jpg']


Designer.delete_all
Designers = Designer.create([{name: 'xbox', surname: 'Microsoft console', description: 'description', image_url: 'xbox.jpeg', created_at: 01012013, updated_at: '01023012'},
                             {name: 'xbox', surname: 'Microsoft console', description: 'description', image_url: 'xbox.jpeg', created_at: 01012013, updated_at: '01023012'},
                             {name: 'xbox', surname: 'Microsoft console', description: 'description', image_url: 'xbox.jpeg', created_at: 01012013, updated_at: '01023012'},
                             {name: 'xbox', surname: 'Microsoft console', description: 'description', image_url: 'xbox.jpeg', created_at: 01012013, updated_at: '01023012'},
                             {name: 'xbox', surname: 'Microsoft console', description: 'description', image_url: 'xbox.jpeg', created_at: 01012013, updated_at: '01023012'}
                            ])


#Game.delete_all
#10.times {|i|
#  g = Game.new title: "titolo_#{i}", description: "Desc",
#               pegi: i, image_url: "#{images[i/3]}"
#  g.save
#}


#consoles[0].games << Game.where("image_url like 'midni%'")
#consoles[1].games << Game.where("image_url like 'pes%'")
#consoles.last.games << Game.where("image_url like 'rails%'")