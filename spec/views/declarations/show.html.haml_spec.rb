require 'spec_helper'

describe "declarations/show.html.haml" do
  before(:each) do
    @declaration = assign(:declaration, stub_model(Declaration,
      :name => "Name",
      :declaration_type => nil,
      :for_year => 1,
      :office => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
