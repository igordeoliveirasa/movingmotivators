require "spec_helper"

describe GameLevelsController do
  describe "routing" do

    it "routes to #index" do
      get("/game_levels").should route_to("game_levels#index")
    end

    it "routes to #new" do
      get("/game_levels/new").should route_to("game_levels#new")
    end

    it "routes to #show" do
      get("/game_levels/1").should route_to("game_levels#show", :id => "1")
    end

    it "routes to #edit" do
      get("/game_levels/1/edit").should route_to("game_levels#edit", :id => "1")
    end

    it "routes to #create" do
      post("/game_levels").should route_to("game_levels#create")
    end

    it "routes to #update" do
      put("/game_levels/1").should route_to("game_levels#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/game_levels/1").should route_to("game_levels#destroy", :id => "1")
    end

  end
end
