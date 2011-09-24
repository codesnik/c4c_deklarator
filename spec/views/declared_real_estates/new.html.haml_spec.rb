require 'spec_helper'

describe "declared_real_estates/new.html.haml" do
  before(:each) do
    assign(:declared_real_estate, stub_model(DeclaredRealEstate,
      :name => "MyString",
      :read_estate_type => nil,
      :area => 1.5,
      :country => "MyString",
      :region => "MyString",
      :tenancy => nil,
      :ownership_type => nil,
      :share => 1.5
    ).as_new_record)
  end

  it "renders new declared_real_estate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => declared_real_estates_path, :method => "post" do
      assert_select "input#declared_real_estate_name", :name => "declared_real_estate[name]"
      assert_select "input#declared_real_estate_read_estate_type", :name => "declared_real_estate[read_estate_type]"
      assert_select "input#declared_real_estate_area", :name => "declared_real_estate[area]"
      assert_select "input#declared_real_estate_country", :name => "declared_real_estate[country]"
      assert_select "input#declared_real_estate_region", :name => "declared_real_estate[region]"
      assert_select "input#declared_real_estate_tenancy", :name => "declared_real_estate[tenancy]"
      assert_select "input#declared_real_estate_ownership_type", :name => "declared_real_estate[ownership_type]"
      assert_select "input#declared_real_estate_share", :name => "declared_real_estate[share]"
    end
  end
end
