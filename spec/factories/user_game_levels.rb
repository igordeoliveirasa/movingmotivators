# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_game_level do
    user_game nil
    game_level nil
  end
end
