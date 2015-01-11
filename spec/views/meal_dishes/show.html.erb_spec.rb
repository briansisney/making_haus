require 'rails_helper'

RSpec.describe "meal_dishes/show", :type => :view do
  before(:each) do
    @meal_dish = assign(:meal_dish, MealDish.create!(
      :meal => nil,
      :dish => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
