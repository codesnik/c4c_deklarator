require 'spec_helper'

describe "declarations/index.html.haml" do
  before(:each) do
    assign(:declarations, [
      stub_model(Declaration,
        :name => "Name",
        :declaration_type => nil,
        :for_year => 1,
        :office => nil
      ),
      stub_model(Declaration,
        :name => "Name",
        :declaration_type => nil,
        :for_year => 1,
        :office => nil
      )
    ])
  end

  it "renders a list of declarations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
