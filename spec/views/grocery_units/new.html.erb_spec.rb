require 'rails_helper'

RSpec.describe "grocery_units/new", :type => :view do
  before(:each) do
    assign(:grocery_unit, GroceryUnit.new(
      :name => "MyString"
    ))
  end

  it "renders new grocery_unit form" do
    render

    assert_select "form[action=?][method=?]", grocery_units_path, "post" do

      assert_select "input#grocery_unit_name[name=?]", "grocery_unit[name]"
    end
  end
end
