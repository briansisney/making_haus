require 'rails_helper'

RSpec.describe "guests/new", :type => :view do
  before(:each) do
    assign(:guest, Guest.new(
      :user => nil,
      :guest_id => 1,
      :week => nil
    ))
  end

  it "renders new guest form" do
    render

    assert_select "form[action=?][method=?]", guests_path, "post" do

      assert_select "input#guest_user_id[name=?]", "guest[user_id]"

      assert_select "input#guest_guest_id[name=?]", "guest[guest_id]"

      assert_select "input#guest_week_id[name=?]", "guest[week_id]"
    end
  end
end
