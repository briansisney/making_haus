require 'rails_helper'

RSpec.describe "meals/new", :type => :view do
  before(:each) do
    assign(:meal, Meal.new(
      :name => "MyString",
      :week => nil
    ))
  end

  it "renders new meal form" do
    render

    assert_select "form[action=?][method=?]", meals_path, "post" do

      assert_select "input#meal_name[name=?]", "meal[name]"

      assert_select "input#meal_week_id[name=?]", "meal[week_id]"
    end
  end
end
