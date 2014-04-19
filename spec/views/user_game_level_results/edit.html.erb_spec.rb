require 'spec_helper'

describe "user_game_level_results/edit" do
  before(:each) do
    @user_game_level_result = assign(:user_game_level_result, stub_model(UserGameLevelResult,
      :user_game_level => nil,
      :motivator => nil,
      :x => 1,
      :y => 1
    ))
  end

  it "renders the edit user_game_level_result form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_game_level_result_path(@user_game_level_result), "post" do
      assert_select "input#user_game_level_result_user_game_level[name=?]", "user_game_level_result[user_game_level]"
      assert_select "input#user_game_level_result_motivator[name=?]", "user_game_level_result[motivator]"
      assert_select "input#user_game_level_result_x[name=?]", "user_game_level_result[x]"
      assert_select "input#user_game_level_result_y[name=?]", "user_game_level_result[y]"
    end
  end
end
