require 'rails_helper'

RSpec.describe "guest_lists/show", :type => :view do
  before(:each) do
    @guest_list = assign(:guest_list, GuestList.create!(
      :user => nil,
      :guest_id => 1,
      :week => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
  end
end
