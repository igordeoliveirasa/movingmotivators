class UserGameLevelMotivator < ActiveRecord::Base
  belongs_to :user_game_level
  belongs_to :motivator
end
