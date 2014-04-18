json.array!(@user_game_level_motivators) do |user_game_level_motivator|
  json.extract! user_game_level_motivator, :id, :user_game_level_id, :motivator_id, :x, :y
  json.url user_game_level_motivator_url(user_game_level_motivator, format: :json)
end
