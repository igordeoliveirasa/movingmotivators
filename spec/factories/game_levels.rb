# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :game_level do
    name "MyString"
    level 1
    game nil
  end
end
