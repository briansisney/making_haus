require 'rails_helper'

RSpec.describe "paids/edit", :type => :view do
  before(:each) do
    @paid = assign(:paid, Paid.create!(
      :amount => 1.5,
      :platform => "MyString",
      :actor_id => 1,
      :target_id => 1,
      :reproter_id => 1
    ))
  end

  it "renders the edit paid form" do
    render

    assert_select "form[action=?][method=?]", paid_path(@paid), "post" do

      assert_select "input#paid_amount[name=?]", "paid[amount]"

      assert_select "input#paid_platform[name=?]", "paid[platform]"

      assert_select "input#paid_actor_id[name=?]", "paid[actor_id]"

      assert_select "input#paid_target_id[name=?]", "paid[target_id]"

      assert_select "input#paid_reproter_id[name=?]", "paid[reproter_id]"
    end
  end
end
