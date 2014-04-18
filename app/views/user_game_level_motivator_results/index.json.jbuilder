json.array!(@user_game_level_motivator_results) do |user_game_level_motivator_result|
  json.extract! user_game_level_motivator_result, :id, :user_game_id, :game_level_id, :motivator_id, :x, :y
  json.url user_game_level_motivator_result_url(user_game_level_motivator_result, format: :json)
end
