require 'rails_helper'

RSpec.describe "no_lists/show", :type => :view do
  before(:each) do
    @no_list = assign(:no_list, NoList.create!(
      :name => "Name",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
