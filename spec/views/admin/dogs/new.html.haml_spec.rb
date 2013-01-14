require 'spec_helper'

describe "admin/dogs/new" do
  before(:each) do
    assign(:admin_dog, stub_model(Admin::Dog).as_new_record)
  end

  it "renders new admin_dog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_dogs_path, :method => "post" do
    end
  end
end
