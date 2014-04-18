# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
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

if Gametype.all.length != 2
  Gametype.create([{ name: 'ordering', description: ''}, 
                   { name: 'moving', description: ''}])
end
