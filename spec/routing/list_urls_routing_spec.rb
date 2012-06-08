require "spec_helper"

describe ListUrlsController do
  describe "routing" do

    it "routes to #index" do
      get("/list_urls").should route_to("list_urls#index")
    end

    it "routes to #new" do
      get("/list_urls/new").should route_to("list_urls#new")
    end

    it "routes to #show" do
      get("/list_urls/1").should route_to("list_urls#show", :id => "1")
    end

    it "routes to #edit" do
      get("/list_urls/1/edit").should route_to("list_urls#edit", :id => "1")
    end

    it "routes to #create" do
      post("/list_urls").should route_to("list_urls#create")
    end

    it "routes to #update" do
      put("/list_urls/1").should route_to("list_urls#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/list_urls/1").should route_to("list_urls#destroy", :id => "1")
    end

  end
end
