class UserResult < ActiveRecord::Base
  belongs_to :user_game
  belongs_to :game_level
  belongs_to :motivator
end
