require 'spec_helper'

describe Admin::51jobController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'getlist'" do
    it "returns http success" do
      get 'getlist'
      response.should be_success
    end
  end

  describe "GET 'getdetail'" do
    it "returns http success" do
      get 'getdetail'
      response.should be_success
    end
  end

end
