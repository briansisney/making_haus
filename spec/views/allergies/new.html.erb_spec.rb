require 'rails_helper'

RSpec.describe "allergies/new", :type => :view do
  before(:each) do
    assign(:allergy, Allergy.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new allergy form" do
    render

    assert_select "form[action=?][method=?]", allergies_path, "post" do

      assert_select "input#allergy_name[name=?]", "allergy[name]"

      assert_select "textarea#allergy_description[name=?]", "allergy[description]"
    end
  end
end
