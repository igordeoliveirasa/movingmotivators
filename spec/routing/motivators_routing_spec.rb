require "spec_helper"

describe MotivatorsController do
  describe "routing" do

    it "routes to #index" do
      get("/motivators").should route_to("motivators#index")
    end

    it "routes to #new" do
      get("/motivators/new").should route_to("motivators#new")
    end

    it "routes to #show" do
      get("/motivators/1").should route_to("motivators#show", :id => "1")
    end

    it "routes to #edit" do
      get("/motivators/1/edit").should route_to("motivators#edit", :id => "1")
    end

    it "routes to #create" do
      post("/motivators").should route_to("motivators#create")
    end

    it "routes to #update" do
      put("/motivators/1").should route_to("motivators#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/motivators/1").should route_to("motivators#destroy", :id => "1")
    end

  end
end
