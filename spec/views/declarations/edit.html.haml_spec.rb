require 'spec_helper'

describe "declarations/edit.html.haml" do
  before(:each) do
    @declaration = assign(:declaration, stub_model(Declaration,
      :name => "MyString",
      :declaration_type => nil,
      :for_year => 1,
      :office => nil
    ))
  end

  it "renders the edit declaration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => declarations_path(@declaration), :method => "post" do
      assert_select "input#declaration_name", :name => "declaration[name]"
      assert_select "input#declaration_declaration_type", :name => "declaration[declaration_type]"
      assert_select "input#declaration_for_year", :name => "declaration[for_year]"
      assert_select "input#declaration_office", :name => "declaration[office]"
    end
  end
end
