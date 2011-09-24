require 'spec_helper'

describe "offices/index.html.haml" do
  before(:each) do
    assign(:offices, [
      stub_model(Office,
        :name => "Name",
        :region => nil,
        :office_type => nil
      ),
      stub_model(Office,
        :name => "Name",
        :region => nil,
        :office_type => nil
      )
    ])
  end

  it "renders a list of offices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
