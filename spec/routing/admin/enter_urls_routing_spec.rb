require "spec_helper"

describe Admin::EnterUrlsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/enter_urls").should route_to("admin/enter_urls#index")
    end

    it "routes to #new" do
      get("/admin/enter_urls/new").should route_to("admin/enter_urls#new")
    end

    it "routes to #show" do
      get("/admin/enter_urls/1").should route_to("admin/enter_urls#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/enter_urls/1/edit").should route_to("admin/enter_urls#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/enter_urls").should route_to("admin/enter_urls#create")
    end

    it "routes to #update" do
      put("/admin/enter_urls/1").should route_to("admin/enter_urls#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/enter_urls/1").should route_to("admin/enter_urls#destroy", :id => "1")
    end

  end
end
