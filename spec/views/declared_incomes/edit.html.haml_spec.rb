require 'spec_helper'

describe "declared_incomes/edit.html.haml" do
  before(:each) do
    @declared_income = assign(:declared_income, stub_model(DeclaredIncome,
      :declaration => nil,
      :amount => 1.5,
      :description => "MyText"
    ))
  end

  it "renders the edit declared_income form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => declared_incomes_path(@declared_income), :method => "post" do
      assert_select "input#declared_income_declaration", :name => "declared_income[declaration]"
      assert_select "input#declared_income_amount", :name => "declared_income[amount]"
      assert_select "textarea#declared_income_description", :name => "declared_income[description]"
    end
  end
end
