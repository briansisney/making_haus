require 'rails_helper'

RSpec.describe "dish_groceries/show", :type => :view do
  before(:each) do
    @dish_grocery = assign(:dish_grocery, DishGrocery.create!(
      :grocery_item => nil,
      :dish => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
