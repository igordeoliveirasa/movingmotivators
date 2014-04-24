require 'spec_helper'

describe "game_level_permissions/new" do
  before(:each) do
    assign(:game_level_permission, stub_model(GameLevelPermission,
      :game_level => nil,
      :level_permission => nil
    ).as_new_record)
  end

  it "renders new game_level_permission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", game_level_permissions_path, "post" do
      assert_select "input#game_level_permission_game_level[name=?]", "game_level_permission[game_level]"
      assert_select "input#game_level_permission_level_permission[name=?]", "game_level_permission[level_permission]"
    end
  end
end
