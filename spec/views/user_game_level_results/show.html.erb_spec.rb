require 'spec_helper'

describe "user_game_level_results/show" do
  before(:each) do
    @user_game_level_result = assign(:user_game_level_result, stub_model(UserGameLevelResult,
      :user_game_level => nil,
      :motivator => nil,
      :x => 1,
      :y => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
