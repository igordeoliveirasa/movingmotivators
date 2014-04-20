require "spec_helper"

describe UserGameLevelsController do
  describe "routing" do

    it "routes to #index" do
      get("/user_game_levels").should route_to("user_game_levels#index")
    end

    it "routes to #new" do
      get("/user_game_levels/new").should route_to("user_game_levels#new")
    end

    it "routes to #show" do
      get("/user_game_levels/1").should route_to("user_game_levels#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_game_levels/1/edit").should route_to("user_game_levels#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_game_levels").should route_to("user_game_levels#create")
    end

    it "routes to #update" do
      put("/user_game_levels/1").should route_to("user_game_levels#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_game_levels/1").should route_to("user_game_levels#destroy", :id => "1")
    end

  end
end
