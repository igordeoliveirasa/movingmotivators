class GameLevelPermission < ActiveRecord::Base
  belongs_to :game_level
  belongs_to :level_permission
end
