require 'spec_helper'

describe "declared_transports/edit.html.haml" do
  before(:each) do
    @declared_transport = assign(:declared_transport, stub_model(DeclaredTransport,
      :name => "MyString",
      :transport_type => nil,
      :car_vendor => nil,
      :car_model => nil,
      :production_year => 1,
      :tenancy => nil,
      :ownership_type => nil,
      :share => 1.5
    ))
  end

  it "renders the edit declared_transport form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => declared_transports_path(@declared_transport), :method => "post" do
      assert_select "input#declared_transport_name", :name => "declared_transport[name]"
      assert_select "input#declared_transport_transport_type", :name => "declared_transport[transport_type]"
      assert_select "input#declared_transport_car_vendor", :name => "declared_transport[car_vendor]"
      assert_select "input#declared_transport_car_model", :name => "declared_transport[car_model]"
      assert_select "input#declared_transport_production_year", :name => "declared_transport[production_year]"
      assert_select "input#declared_transport_tenancy", :name => "declared_transport[tenancy]"
      assert_select "input#declared_transport_ownership_type", :name => "declared_transport[ownership_type]"
      assert_select "input#declared_transport_share", :name => "declared_transport[share]"
    end
  end
end
