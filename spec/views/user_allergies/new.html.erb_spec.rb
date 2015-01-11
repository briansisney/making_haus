require 'rails_helper'

RSpec.describe "user_allergies/new", :type => :view do
  before(:each) do
    assign(:user_allergy, UserAllergy.new(
      :user => nil,
      :allergy => nil
    ))
  end

  it "renders new user_allergy form" do
    render

    assert_select "form[action=?][method=?]", user_allergies_path, "post" do

      assert_select "input#user_allergy_user_id[name=?]", "user_allergy[user_id]"

      assert_select "input#user_allergy_allergy_id[name=?]", "user_allergy[allergy_id]"
    end
  end
end
