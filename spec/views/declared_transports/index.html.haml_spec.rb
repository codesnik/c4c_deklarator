require 'spec_helper'

describe "declared_transports/index.html.haml" do
  before(:each) do
    assign(:declared_transports, [
      stub_model(DeclaredTransport,
        :name => "Name",
        :transport_type => nil,
        :car_vendor => nil,
        :car_model => nil,
        :production_year => 1,
        :tenancy => nil,
        :ownership_type => nil,
        :share => 1.5
      ),
      stub_model(DeclaredTransport,
        :name => "Name",
        :transport_type => nil,
        :car_vendor => nil,
        :car_model => nil,
        :production_year => 1,
        :tenancy => nil,
        :ownership_type => nil,
        :share => 1.5
      )
    ])
  end

  it "renders a list of declared_transports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
