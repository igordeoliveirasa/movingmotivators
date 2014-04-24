class CreateGameLevelPermissions < ActiveRecord::Migration
  def change
    create_table :game_level_permissions do |t|
      t.references :game_level, index: true
      t.references :level_permission, index: true

      t.timestamps
    end
  end
end
