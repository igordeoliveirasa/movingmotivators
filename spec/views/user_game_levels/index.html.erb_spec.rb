require 'spec_helper'

describe "user_game_levels/index" do
  before(:each) do
    assign(:user_game_levels, [
      stub_model(UserGameLevel,
        :user_game => nil,
        :game_level => nil
      ),
      stub_model(UserGameLevel,
        :user_game => nil,
        :game_level => nil
      )
    ])
  end

  it "renders a list of user_game_levels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
