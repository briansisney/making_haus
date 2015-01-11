require 'rails_helper'

RSpec.describe "meals/edit", :type => :view do
  before(:each) do
    @meal = assign(:meal, Meal.create!(
      :name => "MyString",
      :week => nil
    ))
  end

  it "renders the edit meal form" do
    render

    assert_select "form[action=?][method=?]", meal_path(@meal), "post" do

      assert_select "input#meal_name[name=?]", "meal[name]"

      assert_select "input#meal_week_id[name=?]", "meal[week_id]"
    end
  end
end
