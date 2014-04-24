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


if LevelPermission.all.length == 0
  LevelPermission.create([{ name: 'Prioritize Motivators', description: 'you can prioritize the motivators'}])
  LevelPermission.create([{ name: 'Set As Positive', description: 'you can set each motivator as positive'}])
  LevelPermission.create([{ name: 'Set As Negative', description: 'you can set each motivator as negative'}])
end


if Game.all.length == 0
  Game.create([{ name: 'Default', description: 'thats the description of the game'}])
end


if GameLevel.all.length == 0
  GameLevel.create([{ name: 'Prioritizing Motivators', level: 1, game_id: 1}, 
               { name: 'Setting Motivators as Positive and/or Negative', level: 2, game_id: 1}])
end

if GameLevelPermission.all.length == 0
  GameLevelPermission.create({ game_level_id: 1, level_permission_id: 1 })
  GameLevelPermission.create({ game_level_id: 2, level_permission_id: 2 })
  GameLevelPermission.create({ game_level_id: 2, level_permission_id: 3 })
end

if UserGame.all.length == 0
  UserGame.create({ user_id: 1, game_id: 1 })
end
