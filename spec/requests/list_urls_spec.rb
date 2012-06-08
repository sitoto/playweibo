require 'spec_helper'

describe "ListUrls" do
  describe "GET /list_urls" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get list_urls_path
      response.status.should be(200)
    end
  end
end
