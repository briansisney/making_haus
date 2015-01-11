require 'rails_helper'

RSpec.describe "grocery_units/edit", :type => :view do
  before(:each) do
    @grocery_unit = assign(:grocery_unit, GroceryUnit.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit grocery_unit form" do
    render

    assert_select "form[action=?][method=?]", grocery_unit_path(@grocery_unit), "post" do

      assert_select "input#grocery_unit_name[name=?]", "grocery_unit[name]"
    end
  end
end
