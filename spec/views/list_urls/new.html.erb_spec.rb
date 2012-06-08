require 'spec_helper'

describe "list_urls/new" do
  before(:each) do
    assign(:list_url, stub_model(ListUrl).as_new_record)
  end

  it "renders new list_url form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => list_urls_path, :method => "post" do
    end
  end
end
