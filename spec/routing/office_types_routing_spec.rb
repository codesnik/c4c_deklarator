require "spec_helper"

describe OfficeTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/office_types").should route_to("office_types#index")
    end

    it "routes to #new" do
      get("/office_types/new").should route_to("office_types#new")
    end

    it "routes to #show" do
      get("/office_types/1").should route_to("office_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/office_types/1/edit").should route_to("office_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/office_types").should route_to("office_types#create")
    end

    it "routes to #update" do
      put("/office_types/1").should route_to("office_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/office_types/1").should route_to("office_types#destroy", :id => "1")
    end

  end
end
