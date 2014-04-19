require 'spec_helper'

describe "game_levels/index" do
  before(:each) do
    assign(:game_levels, [
      stub_model(GameLevel,
        :name => "Name",
        :level => 1,
        :game => nil
      ),
      stub_model(GameLevel,
        :name => "Name",
        :level => 1,
        :game => nil
      )
    ])
  end

  it "renders a list of game_levels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
