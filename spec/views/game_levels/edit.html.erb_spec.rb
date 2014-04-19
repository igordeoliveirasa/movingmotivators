require 'spec_helper'

describe "game_levels/edit" do
  before(:each) do
    @game_level = assign(:game_level, stub_model(GameLevel,
      :name => "MyString",
      :level => 1,
      :game => nil
    ))
  end

  it "renders the edit game_level form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", game_level_path(@game_level), "post" do
      assert_select "input#game_level_name[name=?]", "game_level[name]"
      assert_select "input#game_level_level[name=?]", "game_level[level]"
      assert_select "input#game_level_game[name=?]", "game_level[game]"
    end
  end
end
