require 'spec_helper'

describe "DeclaredTransports" do
  describe "GET /declared_transports" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get declared_transports_path
      response.status.should be(200)
    end
  end
end
