json.array!(@user_games) do |user_game|
  json.( user_game, :id, :user_id, :game_id)
  
  json.game do |game|
    json.(user_game.game, :id, :name)
    json.game_levels user_game.game.game_levels do |game_level|
      json.(game_level, :id, :level)
    end
  end
  
  json.user_game_levels user_game.user_game_levels do |user_game_level|
    json.(user_game_level, :id)
  end

  json.url user_game_url(user_game, format: :json)
end
