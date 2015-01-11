require 'rails_helper'

RSpec.describe "user_allergies/edit", :type => :view do
  before(:each) do
    @user_allergy = assign(:user_allergy, UserAllergy.create!(
      :user => nil,
      :allergy => nil
    ))
  end

  it "renders the edit user_allergy form" do
    render

    assert_select "form[action=?][method=?]", user_allergy_path(@user_allergy), "post" do

      assert_select "input#user_allergy_user_id[name=?]", "user_allergy[user_id]"

      assert_select "input#user_allergy_allergy_id[name=?]", "user_allergy[allergy_id]"
    end
  end
end
