require 'spec_helper'

describe "declared_incomes/new.html.haml" do
  before(:each) do
    assign(:declared_income, stub_model(DeclaredIncome,
      :declaration => nil,
      :amount => 1.5,
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new declared_income form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => declared_incomes_path, :method => "post" do
      assert_select "input#declared_income_declaration", :name => "declared_income[declaration]"
      assert_select "input#declared_income_amount", :name => "declared_income[amount]"
      assert_select "textarea#declared_income_description", :name => "declared_income[description]"
    end
  end
end
