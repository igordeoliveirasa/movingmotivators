# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_game_level_result do
    user_game_level nil
    motivator nil
    x 1
    y 1
  end
end
