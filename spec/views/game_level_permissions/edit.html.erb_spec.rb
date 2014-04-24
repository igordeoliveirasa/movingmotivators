require 'spec_helper'

describe "game_level_permissions/edit" do
  before(:each) do
    @game_level_permission = assign(:game_level_permission, stub_model(GameLevelPermission,
      :game_level => nil,
      :level_permission => nil
    ))
  end

  it "renders the edit game_level_permission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", game_level_permission_path(@game_level_permission), "post" do
      assert_select "input#game_level_permission_game_level[name=?]", "game_level_permission[game_level]"
      assert_select "input#game_level_permission_level_permission[name=?]", "game_level_permission[level_permission]"
    end
  end
end
