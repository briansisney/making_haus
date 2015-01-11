require 'rails_helper'

RSpec.describe "guests/edit", :type => :view do
  before(:each) do
    @guest = assign(:guest, Guest.create!(
      :user => nil,
      :guest_id => 1,
      :week => nil
    ))
  end

  it "renders the edit guest form" do
    render

    assert_select "form[action=?][method=?]", guest_path(@guest), "post" do

      assert_select "input#guest_user_id[name=?]", "guest[user_id]"

      assert_select "input#guest_guest_id[name=?]", "guest[guest_id]"

      assert_select "input#guest_week_id[name=?]", "guest[week_id]"
    end
  end
end
