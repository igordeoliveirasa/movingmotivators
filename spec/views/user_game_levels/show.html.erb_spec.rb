require 'spec_helper'

describe "user_game_levels/show" do
  before(:each) do
    @user_game_level = assign(:user_game_level, stub_model(UserGameLevel,
      :user_game => nil,
      :game_level => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
