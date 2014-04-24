require 'spec_helper'

describe "user_game_level_results/index" do
  before(:each) do
    assign(:user_game_level_results, [
      stub_model(UserGameLevelResult,
        :user_game_level => nil,
        :motivator => nil,
        :x => 1,
        :y => 2
      ),
      stub_model(UserGameLevelResult,
        :user_game_level => nil,
        :motivator => nil,
        :x => 1,
        :y => 2
      )
    ])
  end

  it "renders a list of user_game_level_results" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
