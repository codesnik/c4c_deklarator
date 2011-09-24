require 'spec_helper'

describe "office_types/edit.html.haml" do
  before(:each) do
    @office_type = assign(:office_type, stub_model(OfficeType,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit office_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => office_types_path(@office_type), :method => "post" do
      assert_select "input#office_type_name", :name => "office_type[name]"
      assert_select "textarea#office_type_description", :name => "office_type[description]"
    end
  end
end
