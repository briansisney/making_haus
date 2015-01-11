require 'rails_helper'

RSpec.describe "guests/index", :type => :view do
  before(:each) do
    assign(:guests, [
      Guest.create!(
        :user => nil,
        :guest_id => 1,
        :week => nil
      ),
      Guest.create!(
        :user => nil,
        :guest_id => 1,
        :week => nil
      )
    ])
  end

  it "renders a list of guests" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
