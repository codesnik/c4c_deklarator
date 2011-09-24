require 'spec_helper'

describe "declared_incomes/show.html.haml" do
  before(:each) do
    @declared_income = assign(:declared_income, stub_model(DeclaredIncome,
      :declaration => nil,
      :amount => 1.5,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
