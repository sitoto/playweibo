require 'spec_helper'

describe "admin/enter_urls/edit" do
  before(:each) do
    @admin_enter_url = assign(:admin_enter_url, stub_model(Admin::EnterUrl,
      :name => "MyString",
      :url => "MyString",
      :status => 1
    ))
  end

  it "renders the edit admin_enter_url form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_enter_urls_path(@admin_enter_url), :method => "post" do
      assert_select "input#admin_enter_url_name", :name => "admin_enter_url[name]"
      assert_select "input#admin_enter_url_url", :name => "admin_enter_url[url]"
      assert_select "input#admin_enter_url_status", :name => "admin_enter_url[status]"
    end
  end
end
