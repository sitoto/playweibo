describe CaijiEngine do 

  it "has some companies" do
    CaijiEngine.getlist().should be_true
  end
  it "has 30 info in the list" do
    CaijiEngine.get_item_list_from_html().length.should eq(30)
  end
end

