require 'spec_helper'

describe "positions/new.html.haml" do
  before(:each) do
    assign(:position, stub_model(Position,
      :name => "MyString",
      :year => 1,
      :person => nil,
      :office => nil
    ).as_new_record)
  end

  it "renders new position form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => positions_path, :method => "post" do
      assert_select "input#position_name", :name => "position[name]"
      assert_select "input#position_year", :name => "position[year]"
      assert_select "input#position_person", :name => "position[person]"
      assert_select "input#position_office", :name => "position[office]"
    end
  end
end
