class UserGameLevel < ActiveRecord::Base
  belongs_to :user_game
  belongs_to :game_level
end
