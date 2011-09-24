require 'spec_helper'

describe "people/edit.html.haml" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :first_name => "MyString",
      :middle_name => "MyString",
      :last_name => "MyString",
      :notes => "MyText"
    ))
  end

  it "renders the edit person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => people_path(@person), :method => "post" do
      assert_select "input#person_first_name", :name => "person[first_name]"
      assert_select "input#person_middle_name", :name => "person[middle_name]"
      assert_select "input#person_last_name", :name => "person[last_name]"
      assert_select "textarea#person_notes", :name => "person[notes]"
    end
  end
end
