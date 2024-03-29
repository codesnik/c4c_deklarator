require 'spec_helper'

describe "office_types/index.html.haml" do
  before(:each) do
    assign(:office_types, [
      stub_model(OfficeType,
        :name => "Name",
        :description => "MyText"
      ),
      stub_model(OfficeType,
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of office_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
