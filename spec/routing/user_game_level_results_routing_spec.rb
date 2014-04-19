require "spec_helper"

describe UserGameLevelResultsController do
  describe "routing" do

    it "routes to #index" do
      get("/user_game_level_results").should route_to("user_game_level_results#index")
    end

    it "routes to #new" do
      get("/user_game_level_results/new").should route_to("user_game_level_results#new")
    end

    it "routes to #show" do
      get("/user_game_level_results/1").should route_to("user_game_level_results#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_game_level_results/1/edit").should route_to("user_game_level_results#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_game_level_results").should route_to("user_game_level_results#create")
    end

    it "routes to #update" do
      put("/user_game_level_results/1").should route_to("user_game_level_results#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_game_level_results/1").should route_to("user_game_level_results#destroy", :id => "1")
    end

  end
end
