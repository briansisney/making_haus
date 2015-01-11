require 'rails_helper'

RSpec.describe "meal_dishes/edit", :type => :view do
  before(:each) do
    @meal_dish = assign(:meal_dish, MealDish.create!(
      :meal => nil,
      :dish => nil
    ))
  end

  it "renders the edit meal_dish form" do
    render

    assert_select "form[action=?][method=?]", meal_dish_path(@meal_dish), "post" do

      assert_select "input#meal_dish_meal_id[name=?]", "meal_dish[meal_id]"

      assert_select "input#meal_dish_dish_id[name=?]", "meal_dish[dish_id]"
    end
  end
end
