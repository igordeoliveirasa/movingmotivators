# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if User.all.length == 0
  User.create({email: 'igordeoliveirasa@gmail.com', password: '123'})
end

if Motivator.all.length != 10
  Motivator.create( [{ name: 'curiosity'}, 
                { name: 'honor'}, 
                { name: 'acceptance'}, 
                { name: 'mastery'}, 
                { name: 'power'}, 
                { name: 'freedom'}, 
                { name: 'relatedness'}, 
                { name: 'order'}, 
                { name: 'goal'}, 
                { name: 'status'} ] )
end

if GameType.all.length != 2
  GameType.create([{ name: 'sorting', description: ''}, 
                   { name: 'moving', description: ''}])
end


if Game.all.length == 0
  Game.create([{ name: 'sorting', description: '', game_type_id: 1}, 
               { name: 'moving', description: '', game_type_id: 2}])
end
