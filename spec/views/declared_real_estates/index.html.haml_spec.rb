require 'spec_helper'

describe "declared_real_estates/index.html.haml" do
  before(:each) do
    assign(:declared_real_estates, [
      stub_model(DeclaredRealEstate,
        :name => "Name",
        :read_estate_type => nil,
        :area => 1.5,
        :country => "Country",
        :region => "Region",
        :tenancy => nil,
        :ownership_type => nil,
        :share => 1.5
      ),
      stub_model(DeclaredRealEstate,
        :name => "Name",
        :read_estate_type => nil,
        :area => 1.5,
        :country => "Country",
        :region => "Region",
        :tenancy => nil,
        :ownership_type => nil,
        :share => 1.5
      )
    ])
  end

  it "renders a list of declared_real_estates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Region".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
