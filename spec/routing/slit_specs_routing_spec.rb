require "spec_helper"

describe SlitSpecsController do
  describe "routing" do

    it "routes to #index" do
      get("/slit_specs").should route_to("slit_specs#index")
    end

    it "routes to #new" do
      get("/slit_specs/new").should route_to("slit_specs#new")
    end

    it "routes to #show" do
      get("/slit_specs/1").should route_to("slit_specs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/slit_specs/1/edit").should route_to("slit_specs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/slit_specs").should route_to("slit_specs#create")
    end

    it "routes to #update" do
      put("/slit_specs/1").should route_to("slit_specs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/slit_specs/1").should route_to("slit_specs#destroy", :id => "1")
    end

  end
end
