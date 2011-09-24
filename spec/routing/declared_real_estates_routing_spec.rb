require "spec_helper"

describe DeclaredRealEstatesController do
  describe "routing" do

    it "routes to #index" do
      get("/declared_real_estates").should route_to("declared_real_estates#index")
    end

    it "routes to #new" do
      get("/declared_real_estates/new").should route_to("declared_real_estates#new")
    end

    it "routes to #show" do
      get("/declared_real_estates/1").should route_to("declared_real_estates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/declared_real_estates/1/edit").should route_to("declared_real_estates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/declared_real_estates").should route_to("declared_real_estates#create")
    end

    it "routes to #update" do
      put("/declared_real_estates/1").should route_to("declared_real_estates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/declared_real_estates/1").should route_to("declared_real_estates#destroy", :id => "1")
    end

  end
end
