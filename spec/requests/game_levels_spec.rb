require 'spec_helper'

describe "GameLevels" do
  describe "GET /game_levels" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get game_levels_path
      response.status.should be(200)
    end
  end
end
