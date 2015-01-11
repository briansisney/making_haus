require 'rails_helper'

RSpec.describe "users/edit", :type => :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "MyString",
      :picture => "MyString",
      :email => "MyString",
      :guest => false,
      :shirt_size => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_picture[name=?]", "user[picture]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_guest[name=?]", "user[guest]"

      assert_select "input#user_shirt_size[name=?]", "user[shirt_size]"
    end
  end
end
