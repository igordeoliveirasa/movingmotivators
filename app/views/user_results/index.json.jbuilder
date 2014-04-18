json.array!(@user_results) do |user_result|
  json.extract! user_result, :id, :user_game_id, :game_level_id, :motivator_id, :x, :y
  json.url user_result_url(user_result, format: :json)
end
