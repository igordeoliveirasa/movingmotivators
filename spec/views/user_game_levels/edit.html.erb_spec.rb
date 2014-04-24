require 'spec_helper'

describe "user_game_levels/edit" do
  before(:each) do
    @user_game_level = assign(:user_game_level, stub_model(UserGameLevel,
      :user_game => nil,
      :game_level => nil
    ))
  end

  it "renders the edit user_game_level form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_game_level_path(@user_game_level), "post" do
      assert_select "input#user_game_level_user_game[name=?]", "user_game_level[user_game]"
      assert_select "input#user_game_level_game_level[name=?]", "user_game_level[game_level]"
    end
  end
end
