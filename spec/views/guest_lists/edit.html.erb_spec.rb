require 'rails_helper'

RSpec.describe "guest_lists/edit", :type => :view do
  before(:each) do
    @guest_list = assign(:guest_list, GuestList.create!(
      :user => nil,
      :guest_id => 1,
      :week => nil
    ))
  end

  it "renders the edit guest_list form" do
    render

    assert_select "form[action=?][method=?]", guest_list_path(@guest_list), "post" do

      assert_select "input#guest_list_user_id[name=?]", "guest_list[user_id]"

      assert_select "input#guest_list_guest_id[name=?]", "guest_list[guest_id]"

      assert_select "input#guest_list_week_id[name=?]", "guest_list[week_id]"
    end
  end
end
