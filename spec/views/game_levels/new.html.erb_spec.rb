require 'spec_helper'

describe "game_levels/new" do
  before(:each) do
    assign(:game_level, stub_model(GameLevel,
      :name => "MyString",
      :level => 1,
      :game => nil,
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new game_level form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", game_levels_path, "post" do
      assert_select "input#game_level_name[name=?]", "game_level[name]"
      assert_select "input#game_level_level[name=?]", "game_level[level]"
      assert_select "input#game_level_game[name=?]", "game_level[game]"
      assert_select "textarea#game_level_description[name=?]", "game_level[description]"
    end
  end
end
