require "spec_helper"

describe DeclaredTransportsController do
  describe "routing" do

    it "routes to #index" do
      get("/declared_transports").should route_to("declared_transports#index")
    end

    it "routes to #new" do
      get("/declared_transports/new").should route_to("declared_transports#new")
    end

    it "routes to #show" do
      get("/declared_transports/1").should route_to("declared_transports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/declared_transports/1/edit").should route_to("declared_transports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/declared_transports").should route_to("declared_transports#create")
    end

    it "routes to #update" do
      put("/declared_transports/1").should route_to("declared_transports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/declared_transports/1").should route_to("declared_transports#destroy", :id => "1")
    end

  end
end
