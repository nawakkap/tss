require "spec_helper"

describe CoilsController do
  describe "routing" do

    it "routes to #index" do
      get("/coils").should route_to("coils#index")
    end

    it "routes to #new" do
      get("/coils/new").should route_to("coils#new")
    end

    it "routes to #show" do
      get("/coils/1").should route_to("coils#show", :id => "1")
    end

    it "routes to #edit" do
      get("/coils/1/edit").should route_to("coils#edit", :id => "1")
    end

    it "routes to #create" do
      post("/coils").should route_to("coils#create")
    end

    it "routes to #update" do
      put("/coils/1").should route_to("coils#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/coils/1").should route_to("coils#destroy", :id => "1")
    end

  end
end
