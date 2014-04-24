json.array!(@game_level_permissions) do |game_level_permission|
  json.extract! game_level_permission, :id, :game_level_id, :level_permission_id
  json.url game_level_permission_url(game_level_permission, format: :json)
end
