require 'spec_helper'

describe "declared_real_estates/show.html.haml" do
  before(:each) do
    @declared_real_estate = assign(:declared_real_estate, stub_model(DeclaredRealEstate,
      :name => "Name",
      :read_estate_type => nil,
      :area => 1.5,
      :country => "Country",
      :region => "Region",
      :tenancy => nil,
      :ownership_type => nil,
      :share => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Country/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Region/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
  end
end
