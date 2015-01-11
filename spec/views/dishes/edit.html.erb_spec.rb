require 'rails_helper'

RSpec.describe "dishes/edit", :type => :view do
  before(:each) do
    @dish = assign(:dish, Dish.create!(
      :name => "MyString",
      :user => nil,
      :recipe => "MyText"
    ))
  end

  it "renders the edit dish form" do
    render

    assert_select "form[action=?][method=?]", dish_path(@dish), "post" do

      assert_select "input#dish_name[name=?]", "dish[name]"

      assert_select "input#dish_user_id[name=?]", "dish[user_id]"

      assert_select "textarea#dish_recipe[name=?]", "dish[recipe]"
    end
  end
end
