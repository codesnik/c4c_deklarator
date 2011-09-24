require 'spec_helper'

describe "offices/edit.html.haml" do
  before(:each) do
    @office = assign(:office, stub_model(Office,
      :name => "MyString",
      :region => nil,
      :office_type => nil
    ))
  end

  it "renders the edit office form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => offices_path(@office), :method => "post" do
      assert_select "input#office_name", :name => "office[name]"
      assert_select "input#office_region", :name => "office[region]"
      assert_select "input#office_office_type", :name => "office[office_type]"
    end
  end
end
