require 'rails_helper'

RSpec.describe "dish_groceries/index", :type => :view do
  before(:each) do
    assign(:dish_groceries, [
      DishGrocery.create!(
        :grocery_item => nil,
        :dish => nil
      ),
      DishGrocery.create!(
        :grocery_item => nil,
        :dish => nil
      )
    ])
  end

  it "renders a list of dish_groceries" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
