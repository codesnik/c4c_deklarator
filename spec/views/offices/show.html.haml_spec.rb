require 'spec_helper'

describe "offices/show.html.haml" do
  before(:each) do
    @office = assign(:office, stub_model(Office,
      :name => "Name",
      :region => nil,
      :office_type => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
