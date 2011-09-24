require "spec_helper"

describe DeclaredIncomesController do
  describe "routing" do

    it "routes to #index" do
      get("/declared_incomes").should route_to("declared_incomes#index")
    end

    it "routes to #new" do
      get("/declared_incomes/new").should route_to("declared_incomes#new")
    end

    it "routes to #show" do
      get("/declared_incomes/1").should route_to("declared_incomes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/declared_incomes/1/edit").should route_to("declared_incomes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/declared_incomes").should route_to("declared_incomes#create")
    end

    it "routes to #update" do
      put("/declared_incomes/1").should route_to("declared_incomes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/declared_incomes/1").should route_to("declared_incomes#destroy", :id => "1")
    end

  end
end
