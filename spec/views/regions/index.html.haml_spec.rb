require 'spec_helper'

describe "regions/index.html.haml" do
  before(:each) do
    assign(:regions, [
      stub_model(Region,
        :name => "Name",
        :code => "Code"
      ),
      stub_model(Region,
        :name => "Name",
        :code => "Code"
      )
    ])
  end

  it "renders a list of regions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
  end
end
