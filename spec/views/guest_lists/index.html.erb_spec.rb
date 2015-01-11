require 'rails_helper'

RSpec.describe "guest_lists/index", :type => :view do
  before(:each) do
    assign(:guest_lists, [
      GuestList.create!(
        :user => nil,
        :guest_id => 1,
        :week => nil
      ),
      GuestList.create!(
        :user => nil,
        :guest_id => 1,
        :week => nil
      )
    ])
  end

  it "renders a list of guest_lists" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
