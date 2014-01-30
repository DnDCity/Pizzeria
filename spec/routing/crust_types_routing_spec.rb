require "spec_helper"

describe CrustTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/crust_types").should route_to("crust_types#index")
    end

    it "routes to #new" do
      get("/crust_types/new").should route_to("crust_types#new")
    end

    it "routes to #show" do
      get("/crust_types/1").should route_to("crust_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/crust_types/1/edit").should route_to("crust_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/crust_types").should route_to("crust_types#create")
    end

    it "routes to #update" do
      put("/crust_types/1").should route_to("crust_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/crust_types/1").should route_to("crust_types#destroy", :id => "1")
    end

  end
end
