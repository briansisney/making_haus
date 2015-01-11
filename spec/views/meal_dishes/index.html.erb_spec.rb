require 'rails_helper'

RSpec.describe "meal_dishes/index", :type => :view do
  before(:each) do
    assign(:meal_dishes, [
      MealDish.create!(
        :meal => nil,
        :dish => nil
      ),
      MealDish.create!(
        :meal => nil,
        :dish => nil
      )
    ])
  end

  it "renders a list of meal_dishes" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
