require 'spec_helper'

describe "admin/dogs/show" do
  before(:each) do
    @admin_dog = assign(:admin_dog, stub_model(Admin::Dog))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
