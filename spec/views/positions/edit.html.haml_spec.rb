require 'spec_helper'

describe "positions/edit.html.haml" do
  before(:each) do
    @position = assign(:position, stub_model(Position,
      :name => "MyString",
      :year => 1,
      :person => nil,
      :office => nil
    ))
  end

  it "renders the edit position form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => positions_path(@position), :method => "post" do
      assert_select "input#position_name", :name => "position[name]"
      assert_select "input#position_year", :name => "position[year]"
      assert_select "input#position_person", :name => "position[person]"
      assert_select "input#position_office", :name => "position[office]"
    end
  end
end
