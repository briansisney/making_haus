require 'rails_helper'

RSpec.describe "dishes/new", :type => :view do
  before(:each) do
    assign(:dish, Dish.new(
      :name => "MyString",
      :user => nil,
      :recipe => "MyText"
    ))
  end

  it "renders new dish form" do
    render

    assert_select "form[action=?][method=?]", dishes_path, "post" do

      assert_select "input#dish_name[name=?]", "dish[name]"

      assert_select "input#dish_user_id[name=?]", "dish[user_id]"

      assert_select "textarea#dish_recipe[name=?]", "dish[recipe]"
    end
  end
end
