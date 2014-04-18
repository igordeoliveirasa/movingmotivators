json.array!(@user_game_levels) do |user_game_level|
  json.extract! user_game_level, :id, :user_game_id, :game_level_id, :motivator_id, :x, :y, :done
  json.url user_game_level_url(user_game_level, format: :json)
end
