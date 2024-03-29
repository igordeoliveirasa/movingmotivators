json.array!(@game_levels) do |game_level|
  json.extract! game_level, :id, :name, :level, :game_id, :description
  json.url game_level_url(game_level, format: :json)
end
