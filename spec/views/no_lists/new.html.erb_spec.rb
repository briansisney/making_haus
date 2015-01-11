require 'rails_helper'

RSpec.describe "no_lists/new", :type => :view do
  before(:each) do
    assign(:no_list, NoList.new(
      :name => "MyString",
      :user => nil
    ))
  end

  it "renders new no_list form" do
    render

    assert_select "form[action=?][method=?]", no_lists_path, "post" do

      assert_select "input#no_list_name[name=?]", "no_list[name]"

      assert_select "input#no_list_user_id[name=?]", "no_list[user_id]"
    end
  end
end
