require "spec_helper"

describe GameLevelPermissionsController do
  describe "routing" do

    it "routes to #index" do
      get("/game_level_permissions").should route_to("game_level_permissions#index")
    end

    it "routes to #new" do
      get("/game_level_permissions/new").should route_to("game_level_permissions#new")
    end

    it "routes to #show" do
      get("/game_level_permissions/1").should route_to("game_level_permissions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/game_level_permissions/1/edit").should route_to("game_level_permissions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/game_level_permissions").should route_to("game_level_permissions#create")
    end

    it "routes to #update" do
      put("/game_level_permissions/1").should route_to("game_level_permissions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/game_level_permissions/1").should route_to("game_level_permissions#destroy", :id => "1")
    end

  end
end
