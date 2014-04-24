json.array!(@level_permissions) do |level_permission|
  json.extract! level_permission, :id, :name, :description
  json.url level_permission_url(level_permission, format: :json)
end
