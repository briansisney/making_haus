require 'rails_helper'

RSpec.describe "dishes/index", :type => :view do
  before(:each) do
    assign(:dishes, [
      Dish.create!(
        :name => "Name",
        :user => nil,
        :recipe => "MyText"
      ),
      Dish.create!(
        :name => "Name",
        :user => nil,
        :recipe => "MyText"
      )
    ])
  end

  it "renders a list of dishes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
