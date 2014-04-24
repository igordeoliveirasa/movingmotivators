require 'spec_helper'

describe "game_level_permissions/index" do
  before(:each) do
    assign(:game_level_permissions, [
      stub_model(GameLevelPermission,
        :game_level => nil,
        :level_permission => nil
      ),
      stub_model(GameLevelPermission,
        :game_level => nil,
        :level_permission => nil
      )
    ])
  end

  it "renders a list of game_level_permissions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
