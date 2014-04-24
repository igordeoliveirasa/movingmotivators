require 'spec_helper'

describe "game_level_permissions/show" do
  before(:each) do
    @game_level_permission = assign(:game_level_permission, stub_model(GameLevelPermission,
      :game_level => nil,
      :level_permission => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
