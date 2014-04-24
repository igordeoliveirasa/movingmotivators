require 'spec_helper'

describe "user_game_levels/new" do
  before(:each) do
    assign(:user_game_level, stub_model(UserGameLevel,
      :user_game => nil,
      :game_level => nil
    ).as_new_record)
  end

  it "renders new user_game_level form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_game_levels_path, "post" do
      assert_select "input#user_game_level_user_game[name=?]", "user_game_level[user_game]"
      assert_select "input#user_game_level_game_level[name=?]", "user_game_level[game_level]"
    end
  end
end
