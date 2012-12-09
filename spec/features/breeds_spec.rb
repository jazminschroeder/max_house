require 'spec_helper'

describe "breeds page" do
  it "shows a list of all breeds" do
    visit '/breeds'
    page.should have_content('All the breeds in Max House')
  end
end