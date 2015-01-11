require 'rails_helper'

RSpec.describe "users/new", :type => :view do
  before(:each) do
    assign(:user, User.new(
      :name => "MyString",
      :picture => "MyString",
      :email => "MyString",
      :guest => false,
      :shirt_size => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_picture[name=?]", "user[picture]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_guest[name=?]", "user[guest]"

      assert_select "input#user_shirt_size[name=?]", "user[shirt_size]"
    end
  end
end
