require "spec_helper"

describe LevelPermissionsController do
  describe "routing" do

    it "routes to #index" do
      get("/level_permissions").should route_to("level_permissions#index")
    end

    it "routes to #new" do
      get("/level_permissions/new").should route_to("level_permissions#new")
    end

    it "routes to #show" do
      get("/level_permissions/1").should route_to("level_permissions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/level_permissions/1/edit").should route_to("level_permissions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/level_permissions").should route_to("level_permissions#create")
    end

    it "routes to #update" do
      put("/level_permissions/1").should route_to("level_permissions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/level_permissions/1").should route_to("level_permissions#destroy", :id => "1")
    end

  end
end
