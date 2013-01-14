require 'spec_helper'

describe "admin/dogs/edit" do
  before(:each) do
    @admin_dog = assign(:admin_dog, stub_model(Admin::Dog))
  end

  it "renders the edit admin_dog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_dogs_path(@admin_dog), :method => "post" do
    end
  end
end
