require 'rails_helper'

RSpec.describe "no_lists/edit", :type => :view do
  before(:each) do
    @no_list = assign(:no_list, NoList.create!(
      :name => "MyString",
      :user => nil
    ))
  end

  it "renders the edit no_list form" do
    render

    assert_select "form[action=?][method=?]", no_list_path(@no_list), "post" do

      assert_select "input#no_list_name[name=?]", "no_list[name]"

      assert_select "input#no_list_user_id[name=?]", "no_list[user_id]"
    end
  end
end
