require 'spec_helper'

describe "declared_incomes/index.html.haml" do
  before(:each) do
    assign(:declared_incomes, [
      stub_model(DeclaredIncome,
        :declaration => nil,
        :amount => 1.5,
        :description => "MyText"
      ),
      stub_model(DeclaredIncome,
        :declaration => nil,
        :amount => 1.5,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of declared_incomes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
