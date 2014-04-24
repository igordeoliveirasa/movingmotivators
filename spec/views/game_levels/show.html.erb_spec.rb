require 'spec_helper'

describe "game_levels/show" do
  before(:each) do
    @game_level = assign(:game_level, stub_model(GameLevel,
      :name => "Name",
      :level => 1,
      :game => nil,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(//)
    rendered.should match(/MyText/)
  end
end
