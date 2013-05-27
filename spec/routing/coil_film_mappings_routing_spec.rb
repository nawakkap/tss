require "spec_helper"

describe CoilFilmMappingsController do
  describe "routing" do

    it "routes to #index" do
      get("/coil_film_mappings").should route_to("coil_film_mappings#index")
    end

    it "routes to #new" do
      get("/coil_film_mappings/new").should route_to("coil_film_mappings#new")
    end

    it "routes to #show" do
      get("/coil_film_mappings/1").should route_to("coil_film_mappings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/coil_film_mappings/1/edit").should route_to("coil_film_mappings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/coil_film_mappings").should route_to("coil_film_mappings#create")
    end

    it "routes to #update" do
      put("/coil_film_mappings/1").should route_to("coil_film_mappings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/coil_film_mappings/1").should route_to("coil_film_mappings#destroy", :id => "1")
    end

  end
end
