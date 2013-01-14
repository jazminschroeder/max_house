require "spec_helper"

describe Admin::DogsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/dogs").should route_to("admin/dogs#index")
    end

    it "routes to #new" do
      get("/admin/dogs/new").should route_to("admin/dogs#new")
    end

    it "routes to #show" do
      get("/admin/dogs/1").should route_to("admin/dogs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/dogs/1/edit").should route_to("admin/dogs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/dogs").should route_to("admin/dogs#create")
    end

    it "routes to #update" do
      put("/admin/dogs/1").should route_to("admin/dogs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/dogs/1").should route_to("admin/dogs#destroy", :id => "1")
    end

  end
end
