require 'spec_helper'

describe "list_urls/edit" do
  before(:each) do
    @list_url = assign(:list_url, stub_model(ListUrl))
  end

  it "renders the edit list_url form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => list_urls_path(@list_url), :method => "post" do
    end
  end
end
