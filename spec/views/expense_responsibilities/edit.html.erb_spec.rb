require 'rails_helper'

RSpec.describe "expense_responsibilities/edit", :type => :view do
  before(:each) do
    @expense_responsibility = assign(:expense_responsibility, ExpenseResponsibility.create!(
      :expense => nil,
      :user => nil,
      :amount => 1.5
    ))
  end

  it "renders the edit expense_responsibility form" do
    render

    assert_select "form[action=?][method=?]", expense_responsibility_path(@expense_responsibility), "post" do

      assert_select "input#expense_responsibility_expense_id[name=?]", "expense_responsibility[expense_id]"

      assert_select "input#expense_responsibility_user_id[name=?]", "expense_responsibility[user_id]"

      assert_select "input#expense_responsibility_amount[name=?]", "expense_responsibility[amount]"
    end
  end
end
