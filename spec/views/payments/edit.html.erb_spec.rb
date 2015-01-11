require 'rails_helper'

RSpec.describe "payments/edit", :type => :view do
  before(:each) do
    @payment = assign(:payment, Payment.create!(
      :amount => 1.5,
      :platform => "MyString",
      :actor_id => 1,
      :target_id => 1,
      :reproter_id => 1
    ))
  end

  it "renders the edit payment form" do
    render

    assert_select "form[action=?][method=?]", payment_path(@payment), "post" do

      assert_select "input#payment_amount[name=?]", "payment[amount]"

      assert_select "input#payment_platform[name=?]", "payment[platform]"

      assert_select "input#payment_actor_id[name=?]", "payment[actor_id]"

      assert_select "input#payment_target_id[name=?]", "payment[target_id]"

      assert_select "input#payment_reproter_id[name=?]", "payment[reproter_id]"
    end
  end
end
