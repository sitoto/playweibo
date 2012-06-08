require 'spec_helper'

describe "list_urls/index" do
  before(:each) do
    assign(:list_urls, [
      stub_model(ListUrl),
      stub_model(ListUrl)
    ])
  end

  it "renders a list of list_urls" do
    render
  end
end
