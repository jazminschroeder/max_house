require 'spec_helper'

describe "admin/dogs/index" do
  before(:each) do
    assign(:admin_dogs, [
      stub_model(Admin::Dog),
      stub_model(Admin::Dog)
    ])
  end

  it "renders a list of admin/dogs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
