require "spec_helper"

describe DeclarationsController do
  describe "routing" do

    it "routes to #index" do
      get("/declarations").should route_to("declarations#index")
    end

    it "routes to #new" do
      get("/declarations/new").should route_to("declarations#new")
    end

    it "routes to #show" do
      get("/declarations/1").should route_to("declarations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/declarations/1/edit").should route_to("declarations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/declarations").should route_to("declarations#create")
    end

    it "routes to #update" do
      put("/declarations/1").should route_to("declarations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/declarations/1").should route_to("declarations#destroy", :id => "1")
    end

  end
end
