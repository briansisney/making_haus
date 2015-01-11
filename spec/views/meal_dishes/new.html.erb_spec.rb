require 'rails_helper'

RSpec.describe "meal_dishes/new", :type => :view do
  before(:each) do
    assign(:meal_dish, MealDish.new(
      :meal => nil,
      :dish => nil
    ))
  end

  it "renders new meal_dish form" do
    render

    assert_select "form[action=?][method=?]", meal_dishes_path, "post" do

      assert_select "input#meal_dish_meal_id[name=?]", "meal_dish[meal_id]"

      assert_select "input#meal_dish_dish_id[name=?]", "meal_dish[dish_id]"
    end
  end
end
