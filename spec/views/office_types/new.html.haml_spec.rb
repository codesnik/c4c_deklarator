require 'spec_helper'

describe "office_types/new.html.haml" do
  before(:each) do
    assign(:office_type, stub_model(OfficeType,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new office_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => office_types_path, :method => "post" do
      assert_select "input#office_type_name", :name => "office_type[name]"
      assert_select "textarea#office_type_description", :name => "office_type[description]"
    end
  end
end
