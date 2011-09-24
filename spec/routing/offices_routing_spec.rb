require "spec_helper"

describe OfficesController do
  describe "routing" do

    it "routes to #index" do
      get("/offices").should route_to("offices#index")
    end

    it "routes to #new" do
      get("/offices/new").should route_to("offices#new")
    end

    it "routes to #show" do
      get("/offices/1").should route_to("offices#show", :id => "1")
    end

    it "routes to #edit" do
      get("/offices/1/edit").should route_to("offices#edit", :id => "1")
    end

    it "routes to #create" do
      post("/offices").should route_to("offices#create")
    end

    it "routes to #update" do
      put("/offices/1").should route_to("offices#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/offices/1").should route_to("offices#destroy", :id => "1")
    end

  end
end
