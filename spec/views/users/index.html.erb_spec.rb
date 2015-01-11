require 'rails_helper'

RSpec.describe "users/index", :type => :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Name",
        :picture => "Picture",
        :email => "Email",
        :guest => false,
        :shirt_size => "Shirt Size"
      ),
      User.create!(
        :name => "Name",
        :picture => "Picture",
        :email => "Email",
        :guest => false,
        :shirt_size => "Shirt Size"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Shirt Size".to_s, :count => 2
  end
end
