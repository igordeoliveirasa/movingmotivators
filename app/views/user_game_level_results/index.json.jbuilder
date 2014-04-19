json.array!(@user_game_level_results) do |user_game_level_result|
  json.extract! user_game_level_result, :id, :user_game_level_id, :motivator_id, :x, :y
  json.url user_game_level_result_url(user_game_level_result, format: :json)
end
